# variables.tf

variable "region" {
  default = "us-east-1"
}

variable "api_name" {
  default = "MyAppSyncAPI"
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "FeedbackTable"
}

variable "role_name" {
  default = "AppSyncDynamoDBRole"
}
