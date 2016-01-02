# Purpose

Tthis repository contains code written to kick the tires with running go on AWS
lambda.

# Prerequisites

You need docker-compose, and docker-machine + environment if on a mac

# Usage

1. Run `make`. This will generate `hello.zip` which you can upload to s3 and
     use as the source of a lambda function.
