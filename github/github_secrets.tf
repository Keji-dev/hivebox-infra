# GitHub Actions Secret - Github Token
resource "github_actions_secret" "github_token" {
    repository = github_repository.hivebox-infra.name
    secret_name = "GITHUB_TOKEN"
    plaintext_value = var.token_github
}
