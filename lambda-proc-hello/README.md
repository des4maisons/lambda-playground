This lambda function is a more sophisticated way of invoking a `go` process
from lambda's nodejs runtime.

It uses [jasonmoo's strategy](https://github.com/jasonmoo/lambda_proc), namely
to leverage the fact that containers are often re-used across lambda
invocations. In these cases, the startup cost of spawning a go process can be
eliminated by keeping your go process running between lambda invocations.

lambda-proc-hello.js is shamelessly copied from the repo linked above.
