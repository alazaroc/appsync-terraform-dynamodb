resource "aws_appsync_resolver" "query_get_feedback" {
  api_id      = aws_appsync_graphql_api.myapi.id
  type        = "Query"
  field       = "getFeedback"
  data_source = aws_appsync_datasource.dynamodb.name

  request_template  = file("${path.module}/resolvers/request-getFeedback.vtl")
  response_template = file("${path.module}/resolvers/response-getFeedback.vtl")
}

resource "aws_appsync_resolver" "query_list_feedbacks" {
  api_id      = aws_appsync_graphql_api.myapi.id
  type        = "Query"
  field       = "listFeedbacks"
  data_source = aws_appsync_datasource.dynamodb.name

  request_template  = file("${path.module}/resolvers/request-listFeedbacks.vtl")
  response_template = file("${path.module}/resolvers/response-listFeedbacks.vtl")
}
