output "demo" {
  description = "The ID of the VPC"
   value       = "${aws_vpc.demo.id}"
}


output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = "${element(concat(aws_vpc.demo.*.main_route_table_id, list("")), 0)}"
}