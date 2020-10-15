# telegraf-prom-timestream

Creates a Docker container that runs the Telegraf agent, preconfigured with the prometheus input & AWS Timestream output.

# Usage

Config is located under `/config`

Docker container need environment variable `TIMESTREAM_DB_NAME` passed to it

The input file `input.prometheus.conf` is re-written on container startup by the ecs discovery python script - (although this script loops in the background the agent process only reads the config on startup)

# Links

Telegraf: https://docs.influxdata.com/telegraf/v1.15/

Telegraf Prometheus Input: https://github.com/influxdata/telegraf/tree/master/plugins/inputs/prometheus

Telegraf AWS Timestream Output: https://github.com/aws/telegraf/tree/telegraf_v1.15.3_with_Timestream/plugins/outputs/timestream

Ecs Discover Python Script based on script by Signal AI: https://github.com/signal-ai/prometheus-ecs-sd

# TODO

SIGHUP Telegraf agent to re-read config file on changes