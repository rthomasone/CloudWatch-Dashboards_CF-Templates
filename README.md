This repository contains CloudWatch Dashboards to visualize various AWS Services. 

Each template contains two CloudWatch dashboards leveraging [Dashboard Variables](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_dashboard_variables.html) to filter on the desired resources:
- The first dashboard `<AWS_Service>_All_Resources` visualizes ALL resources in the target region
- The second dashboard `<AWS_Service>_Individual_Resources` provides additional filters to isolate a specific resource.