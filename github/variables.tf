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
