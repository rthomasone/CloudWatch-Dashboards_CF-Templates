## CloudWatch Metric Usage
- This dashboard can assist with investigating performance issues, throttling and increased costs associated with CloudWatch Metrics API calls.
- Specifically useful for isolating the source of [GetMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html)/[PutMetricData](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricData.html) charges
- **To-do:** 
    - Expose a parameter to select a CloudWatch log group with CloudTrail logs for analysis

## CloudWatch Alarm Usage
- This dashboard can assist with investigating performance issues, throttling and increased costs associated with CloudWatch Alarms API calls.
- **To-do:** 
    - Expose a parameter to select a CloudWatch log group with CloudTrail logs for analysis


## CloudWatch Logs Usage
- This is a basic dashboard to visualize `IncomingBytes` metric across all log groups in the region.