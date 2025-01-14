resource "github_repository_file" "create_tags_workflow" {
  repository = github_repository.hivebox-infra.name
  file       = ".github/workflows/create-tags.yml"
  content    = <<-EOT
name: Create Tags

on:
  push:
    branches:
      - main

jobs:
  create-tags:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Set up Git
        run: |
          git config --global user.name "GitHub Actions"
          git config --global user.email "actions@github.com"

      - name: Create and push tags
        env:
          GITHUB_TOKEN: \${{ secrets.GITHUB_TOKEN }}
        run: |
          TAGS=("v1.0.0" "v1.1.0" "v1.2.0")
          for TAG in "\${TAGS[@]}"; do
            git tag \$TAG
            git push origin \$TAG
          done
EOT
  commit_message = "Add GitHub Actions workflow to create tags"
}
