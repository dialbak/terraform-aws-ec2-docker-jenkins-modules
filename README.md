###### main.tf

```terraform
module "ec2-docker-nginx-modules" {
  source              = "dialbak/ec2-docker-nginx-modules/aws"
  version             = "1.0.0"
  # insert the 8 required variables here
  vpc_cidr_block      = "10.0.0.0/16"
  subnet_cidr_block   = "10.0.10.0/24"
  avail_zone          = "us-east-1a"
  env_prefix          = "dev"
  my_ip               = "https://whatismyipaddress.com/fr/mon-ip"
  instance_type       = "t2.micro"
  public_key_location = "/Users/bakarydiallo/.ssh/id_rsa.pub"
  image_name          = "amzn2-ami-hvm-*-x86_64-gp2"
}
```

###### entry-script.sh

mets le lien du repo git

###### Check docker is running

- ssh ec2
    - docker ps

###### Test port

- Public-IPv4-address:8080/

###### Access to Jenkins password 
``` shell
CONTAINER_ID=$(sudo docker ps --filter "name=my_jenkins_container" -q)
# Print the container ID
echo "$CONTAINER_ID"
sudo docker exec -it "$CONTAINER_ID" bash
cat /var/jenkins_home/secrets/initialAdminPassword
```