## Deploy

```shell
aws cloudformation deploy \
--template-file Step_Function_Dashboard.json \
--stack-name CloudWatch-Step-Functions-Dashboards \
--parameter-overrides \
  DefaultRegion=us-east-1 \
  StateMachineArn=arn:aws:states:us-east-1:123456789012:stateMachine:test
```

```shell
aws cloudformation deploy \
--template-file Step_Function_Dashboard_Log_Analysis.yaml \
--stack-name Step-Function-Log-Analysis-Dashboard \
--parameter-overrides LogGroupName="/aws/vendedlogs/states/function-name"
```

## Destroy

```shell
./destroy_step_function_dashboard.sh
```

```shell
./destroy_step_function_log_analysis.sh
```

