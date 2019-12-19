resource "aws_route53_record" "www" { 
  zone_id = "ZONE_ID" 
  name    = "www.example.com" 
  type    = "A" 
  ttl     = "300" 
  records = ["IP"] 
} 