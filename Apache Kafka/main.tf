provider "aws" {
    version = "~>2"
    region = "us-east-1"
    access_key = "AKIARNSVS45V44GGKQ5C"
    secrete_key = "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"
}
resource "aws_ami" "Kafka-server" {
  ami             = "ami-02ee8d5b35a4a74b2"
  instance_type = "t2.micro"
  root_device_name    = "/dev/xvda"
  imds_support        = "v2.0" # Enforce usage of IMDSv2. You can safely remove this line if your application explicitly doesn't support it.
  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-xxxxxxxx"
    volume_size = 8
  }
}