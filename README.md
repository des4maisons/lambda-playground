# Purpose

This repository contains code written to kick the tires with running go on AWS
lambda.

# Prerequisites

You need docker-compose, and docker-machine + environment if on a mac

# Usage

1. `cd` into the directory of the lambda function you want to create.
1. Run `make`. This will generate `hello.zip` which you can upload to s3 and
    use as the source of a lambda function.
1. Create a lambda function in aws
    1. Use the `node.js` runtime
    1. "Code entry type" should be `upload a zip file`, with `hello.zip`
    1. "Handler" should be `hello-lambda.handler`, because the file is called
        `hello-lambda.js`
    1. Create a new role from the "Basic Execution Role"
1. Test it out. Click the "test" button.
    1. Once clicked, scroll down to see any errors that occurred.
    1. Click the "monitoring" tab, and then "View logs in Cloudwatch" for more
        specific error message.
