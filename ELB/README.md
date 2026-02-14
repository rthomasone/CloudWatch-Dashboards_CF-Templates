## Visualize ConsumedLBCapacityUnits

For resources with provisioned capacity, CloudWatch Metric `ConsumedLBCapacityUnits` is not automatically listed in the Console.

To visualize this metric, you can create a custom widget using the source below:

```json
{
    "metrics": [
        [ "AWS/ELB", "ConsumedLBCapacityUnits", "LoadBalancerName", "replace_with_clb_name", { "id": "m1" } ]
    ],
    "view": "timeSeries",
    "stacked": false,
    "region": "us-east-1",
    "stat": "Sum",
    "period": 60,
    "title": "replace_with_clb_name: ConsumedLBCapacityUnits"
}
```

Make sure to replace `replace_with_clb_name` with the actual name of your Classic Load Balancer.

## Visual HTTP 4XX and HTTP 5XX as a percentage of the RequestCount

Currently, it's not possible to represent this percentage using [Search Expressions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-search-expressions.html)

```json
{
    "metrics": [
        [ { "expression": "(m1/m3)*100", "label": "Backend HTTP 4XX (%)", "id": "e1" } ],
        [ { "expression": "(m2/m3)*100", "label": "Backend HTTP 5XX (%)", "id": "e2" } ],
        [ "AWS/ELB", "HTTPCode_Backend_4XX", "LoadBalancerName", "ac7cae108a59a40d7b0964f8e1146f3c", { "id": "m1", "visible": false } ],
        [ ".", "HTTPCode_Backend_5XX", ".", ".", { "id": "m2", "visible": false } ],
        [ ".", "RequestCount", ".", ".", { "id": "m3", "visible": false } ]
    ],
    "view": "timeSeries",
    "stacked": false,
    "region": "us-east-1",
    "stat": "Sum",
    "period": 60,
    "title": "ac7cae108a59a40d7b0964f8e1146f3c: Backend HTTP 4xx/5xx (%)"
}
```