resource "aws_route_table_association" "routeTable2subnet" {
  subnet_id      = var.subnetID
  route_table_id = var.routeTableID
}