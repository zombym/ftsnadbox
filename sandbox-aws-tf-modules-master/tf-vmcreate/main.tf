# resource "aws_iam_role" "newvmfortest" {
#   name = "testvm_role"

# #   assume_role_policy = <<EOF
# # {
# #   "Version": "2012-10-17",
# #   "Statement": [
# #     {
# #       "Action": "sts:AssumeRole",
# #       "Principal": {
# #         "Service": "ec2.amazonaws.com"
# #       },
# #       "Effect": "Allow",
# #       "Sid": ""
# #     }
# #   ]
# # }
# # EOF
# # }

# # resource "aws_iam_instance_profile" "vmfortestprofile" {
# #   name = "vmfortestprofile"
# #   role = aws_iam_role.newvmfortest.name
# # }

# # resource "aws_iam_role_policy_attachment" "ssm_attach" {
# #   role       = aws_iam_role.newvmfortest.name
# #   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
# # }

# resource "aws_instance" "inmodulevmname" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id     = var.subnet_id
  
#   tags      = var.common_tags
# }

