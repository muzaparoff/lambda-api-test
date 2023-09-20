# AWS Infrastructure Deployment with Terraform

This project demonstrates how to use Terraform to provision AWS infrastructure and deploy a simple AWS Lambda function behind an API Gateway. The Lambda function responds with "Hello World" when accessed via a GET request to the API Gateway URL.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Configuration](#configuration)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- [Terraform](https://www.terraform.io/downloads.html) (at least version 0.15) installed on your local machine.
- An AWS account with appropriate IAM permissions for creating Lambda functions, API Gateway, and IAM roles.
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured with your AWS credentials.

## Getting Started

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/yourusername/terraform-aws-lambda.git
   cd terraform-aws-lambda

## Usage
To deploy the infrastructure and Lambda function, follow these steps:

1. Ensure you have set up your AWS credentials using the AWS CLI.

2. Run a terraform plan to preview the changes that Terraform will apply:

    ```shell
    terraform plan

3. If the plan looks correct, apply the changes:

    ```shell
    terraform apply

4. After the deployment is complete, you will see the API Gateway URL in the Terraform output. You can access the Lambda function by making a GET request to this URL.

## Testing
Currently, there are no automated tests included in this project. However, you can add tests using tools like Terratest or other testing frameworks to validate your Terraform configuration and infrastructure.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.