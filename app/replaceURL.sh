#!/bin/bash
HOST_API=${HOST_API:-localhost}
find dist/ -type f -exec sed -i "s/localhost/$HOST_API/g" {} +
