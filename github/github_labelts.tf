resource "github_issue_labels" "hivebox-labels" {
    repository = var.repository
    labels = [ 
        {
            name = "Patch"
            color = "32CD32"
            description = "Fixing bugs/small improvements"
        },
        {
            name = "Minor"
            color = "1E90FF"
            description = "New additional features"
        },
        {
            name = "Major"
            color = "FF4500"
            description = "Big changes/disruptive"
        }
    ]
}
