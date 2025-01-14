variable "collaborators" {
    type = map(string) 
    default = {
      "keji-dev-test" = "push"
    }
}

variable "repository" {
    type = string
    default = "hivebox-infra"
}

variable "invitee_github_tokens" {
    type = list(string)
    default = ["xxxxx", "xxxxxx"] # Aqui deberian estar los tokens de los colaboradores (deben proporcionarlos ellos)
}

# Esto estaria bien automatizarlo o mejorarlo de alguna forma
variable "tag_name" {
    type = string
    default = "v1.0.0"
}
