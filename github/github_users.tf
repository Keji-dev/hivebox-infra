provider "github" {
    alias = "invitee"
    for_each = toset(var.invitee_github_tokens)
    token = each.value # Debe contener el token de autenticacion del usuario que va a aceptar las invitaciones. Este token debe ser generado por cada colaborador
}

resource "github_repository_collaborator" "hivebox-users-invitation" {
    for_each = var.collaborators
    repository = var.repository
    username = each.key
    permission = each.value
}

resource "github_user_invitation_accepter" "hivebox-users-acceptation" {
    for_each = github_repository_collaborator.invitation
    invitation_id = each.value.invitation_id
    provider = github.invitee[each.key]
    allow_empty_id = true
}

# Cada colaborador deberá proporcionar su propio token de GitHub para que Terraform pueda aceptar la invitación en su nombre.

# Si tienes varios colaboradores y deseas automatizar esto aún más, podrías usar un archivo de variables o un sistema de gestión de secretos para manejar los tokens de manera segura.
