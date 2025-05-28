module "tf_remote_state" {
  source = "./modules/tf_remote_state"
}

module "ronin_eks" {
  source = "./modules/ronin_eks"
}
