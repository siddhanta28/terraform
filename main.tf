resource "aws_ecr_repository" "repo" {
  count                = length(lookup(var.ecr_name, "ecr"))
  name                 = element(lookup(var.ecr_name, "ecr"),count.index)
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
 
 }
 tags = merge(
    var.additional_tags,
    {
      ManagedBy = "Terraform"
      
    }
  )
}