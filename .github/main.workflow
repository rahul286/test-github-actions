workflow "New workflow" {
  on = "push"
  resolves = ["Slack Notify"]
}

action "Slack Notify" {
  uses = "rtCamp/action-slack-notify@v1.0.0"
  secrets = ["SLACK_WEBHOOK"]
}
