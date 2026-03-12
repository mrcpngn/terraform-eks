//
// Outputs for the VPC module
//

output "id" {
  value = aws_subnet.this.id
}

output "tags" {
  value = aws_subnet.this.tags_all
}
