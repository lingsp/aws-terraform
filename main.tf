module "records" {

records = local.records

resource "aws_route53_record" "RECORDNAME" {
  zone_id = "ZSHPPV9D06FD5"
  name    = "testrecord.w2sports.net"
  type    = "A"
  ttl     = 3600
  records  = [
    "${local.records}"
  ]
 }
}
