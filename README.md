# Description
This package is a Terraform Module using CodePipeline and Codebuild to push a Docker Image to Amazon ECR

# Setup
* [Create a State File Bucket](https://github.com/josjaf/examples/blob/master/aws/bucket.sh)
* add the variable `bucket` with the newly created bucket
* `terraform init -backend-config="conf/jj.tfvars"`
* `terraform apply -var-file conf/jj.tfvars`
* ./deploy.sh