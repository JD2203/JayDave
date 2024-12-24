terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "student_repo" {
  name        = "Jay-repo"
  description = "This is a public repository for Jay."
  visibility  = "public"
  has_projects = false
  has_wiki     = false
  auto_init    = true
}
