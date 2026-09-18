terraform {
  backend "s3" {
    bucket       = "demo-tf.state"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}