resource "github_repository_tag_protection" "hivebox-tags" {
    repository      = var.repository
    pattern         = "v*"
}
