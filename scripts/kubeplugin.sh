#!/bin/bash

# Define command-line arguments
NAMESPACE=$1
COMMAND=$2
RESOURCE_TYPE=$3

# Retrieve resource usage statistics from Kubernetes
kubectl $COMMAND $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read -r line
do
  # Extract CPU and memory usage from the output
  NAME=$(echo "$line" | awk '{print $1}')
  CPU=$(echo "$line" | awk '{print $2}')
  MEMORY=$(echo "$line" | awk '{print $3}')

  # Output the statistics to the console
  echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, $CPU, $MEMORY"
done
