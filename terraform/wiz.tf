module "wiz" {
  source             = "https://s3-us-east-2.amazonaws.com/wizio-public/deployment-v2/aws/wiz-aws-native-terraform-terraform-module.zip"
  external-id        = "cbdebcd5-db57-40cd-b3d7-b2ff71337182"
  data-scanning      = false
  lightsail-scanning = false
  eks-scanning       = true
  remote-arn         = "arn:aws:iam::992382568687:role/prod-ap2-AssumeRoleDelegator"
}

output "wiz_connector_arn" {
  value = module.wiz.role_arn
}
