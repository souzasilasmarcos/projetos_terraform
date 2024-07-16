resource "aws_iam_role" "iam_for_lambda" {
  name               = "${local.workload.env}-${local.workload.name}-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}