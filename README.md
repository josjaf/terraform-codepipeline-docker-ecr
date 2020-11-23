# Description
This package is a Terraform Module using CodePipeline and Codebuild to push a Docker Image to Amazon ECR

# Setup
* [Create a State File Bucket](https://github.com/josjaf/examples/blob/master/aws/bucket.sh)
* add the variable `bucket` with the newly created bucket
* When calling the Init command, your config cannot have any unused variables, which is why we separate them
* `terraform init -backend-config="conf/beta-init.tfvars"`
* `terraform apply -var-file conf/beta.tfvars`
* ./deploy.sh