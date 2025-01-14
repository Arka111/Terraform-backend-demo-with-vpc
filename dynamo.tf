resource "aws_dynamodb_table" "terraform-lock" {
    name           = "tf_estate"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "DynamoDB Terraform State Lock Table to test"
    }
}
