//
// Outputs for the VPC module
//

output "id" {
  value = aws_vpc.this.id
}

output "tags" {
  value = aws_vpc.this.tags_all
}
