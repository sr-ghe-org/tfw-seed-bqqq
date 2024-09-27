
module "vcsworkflow" {
  source  = "app.terraform.io/tfc-test-pool/wrkflw/vcs"
  version = "0.0.5"
  roles = {
    repository = ["roles/artifactregistry.writer"]
    workspace  = ["roles/iam.workloadIdentityPoolAdmin", "roles/compute.admin"]
  }
  gcp_projects        = { pr = "prbqqq", np = "npbqqq" }
  repository_name     = "bigquery"
  repository_template = "tfw-seed-template"
  vcs_ghain           = "ghain-9NW7c1EhRWxYsYs5"
  tfe_project_id      = "prj-Wg2hKkvtnBPT5HZ4"
  ghe_team_id         = "operator-bqqq"
  # tfe_team_id         = ""
  wif = {
    repository = {
      gcp = {
        pr = {
          project_number  = "672284468735"
          pool_id         = "prpoolbqqq"
          provider_id     = "gh-provider"
        },
        np = {
          project_number  = "672284468735"
          pool_id         = "nppoolbqqq"
          provider_id     = "gh-provider"
        }
      }
    },
    workspace = {
      gcp = {
        pr = {
          project_number  = "672284468735"
          pool_id         = "prpoolyooo"
          provider_id     = "tf-provider"
        },
        np = {
          project_number  = "672284468735"
          pool_id         = "nppoolbqqq"
          provider_id     = "tf-provider"
        }
      }
    }
  }
  workload_context = {
    pr = {
      pr = {
        gcp = ["northamerica-northeast2", "northamerica-northeast1", "us-central4"]
      }
    },
    np = {
      stg = {
        gcp = ["northamerica-northeast2"]
      }
    }
  }
  workload_id = "bigq"
  workflow_id = "uery"
}