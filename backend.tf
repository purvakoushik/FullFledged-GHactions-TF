terraform {
  backend "s3" {
    bucket         = "purva-bucket-github-actions"
    key            = "mynew.tfstate"
    region         = "us-east-1"
    dynamodb_table = "purva-githubactions-table"
  }
}
