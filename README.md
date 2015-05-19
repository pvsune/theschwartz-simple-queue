# Simple Queuing Spike App using TheSchwartz
This PERL App is created as an experiment in implementing a simple queuing service for [PopSlide](http://www.popslide.me/). It is still under-development; see **TODOs** below.

## Set-up ##
1. Clone this repository on your local dev environment.
2. Install modules from *CPAN*.
  * `cpanm TheSchwartz Config::FromHash`
  * or if you use dependency management, add them in *cpanfile*
3. Edit `config.pl` with your database credentials.
4. Create database `ts_db` on your local mysql server with this [schema](https://metacpan.org/source/JFEARN/TheSchwartz-1.12/doc/schema.sql)

## Usage ##
1. Run the worker script - `perl worker.pl`
2. Insert some jobs in the queue - `perl insert-to-queue.pl`
3. You should see *dummy texts* displayed on the terminal.

## TODOs ##
1. Create test scripts.
  * Mass job insertion (sort of like stress test) to check if it will handle it efficiently.
  * Simulate failed job scenario if *retry job* is occuring.
2. Implement logging mechanism for debugs, errors, success job scenarios.
3. Daemonize the worker script (looking at [Parallel::ForkManager](https://metacpan.org/pod/Parallel::ForkManager)).

## License ##
Copyright (C) Philamer V. Sune.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
