# VPC variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for public subnets."
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "A list of CIDR blocks for private subnets."
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "nacl_tags" {
  description = "A map of tags to apply to the Network ACL."
  type        = map(string)
  default     = {
    Name = "my-nacl"
  }
}

variable "subnet_tags" {
  description = "A map of tags to apply to subnets."
  type        = map(string)
  default     = {
    public-subnet-0  = "public-subnet-0"
    public-subnet-1  = "public-subnet-1"
    public-subnet-2  = "public-subnet-2"
    private-subnet-0 = "private-subnet-0"
    private-subnet-1 = "private-subnet-1"
    private-subnet-2 = "private-subnet-2"
  }
}

# Security Group Rules for Lambda Function
variable "lambda_vpc_security_group_rules" {
  description = "A list of security group rules for the Lambda function within the VPC."
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}
