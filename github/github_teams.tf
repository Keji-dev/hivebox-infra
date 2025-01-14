# Devs
resource "github_team" "team-developers" {
    name = "Developers"
    description = "Developers Team"
    privacy = "closed"
}

resource "github_team_repository" "hivebox-infra-developers" {
    team_id = github_team.team-developers.id
    repository = github_repository.hivebox-infra.name
    permission = "push"
}

# Admins

resource "github_team" "team-admins" {
    name = "Admins"
    description = "Admins Team"
    privacy = "closed"
}

resource "github_team_repository" "hivebox-infra-admins" {
    team_id = github_team.team-admins.id
    repository = github_repository.hivebox-infra.name
    permission = "admin"
}
