module "eks" {
 source  = "terraform-aws-modules/eks/aws"
 version = "~> 20.35"

 cluster_name    = "ronin-eks"
 cluster_version = "1.32"

 cluster_endpoint_public_access = true
 enable_cluster_creator_admin_permissions = true

 eks_managed_node_groups = {
   ronin = {
     instance_types = ["t3.medium"]
     min_size       = 2
     max_size       = 2
     desired_size   = 2
   }
 }

 vpc_id     = aws_vpc.main.id
 subnet_ids = aws_subnet.public_subnet.*.id
}