locals {
  subs = toset([ "dev", "nonprod", "prod" ])
}


module "test" {
  source = "./module"
  for_each = local.subs

  unique = each.value
}
