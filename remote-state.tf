terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Alura-Curso"
    
    workspaces {
    name = "terraform_alura"
   }
  }
}