docker-supervisor-stdout
========================

Docker base image with supervisor.

Based on [umbrunnen/base](https://index.docker.io/u/zumbrunnen/base/) (a base image with supervisor).  This one adds [supervisor-stdout](https://pypi.python.org/pypi/supervisor-stdout) plugin which relays process output to supervisor's stdout, so it's available via `docker logs`.

# Usage

Build your image using this as base, add supervisor configs to `/etc/supervisor/conf.d/` and they will be picked up automatically.  Example:

    FROM mphre/supervisor-stdout
    
    # install and setup your program

    ADD my_prog.conf /etc/supervisor/conf.d/

To make use of the stdout output put:

    stdout_events_enabled = true
    stderr_events_enabled = true

in the supervisor config snippet for the program you want to run, e.g.:

    [program:test]
    command = /test.sh
    stdout_events_enabled = true
    stderr_events_enabled = true

See [supervisor-stdout](https://pypi.python.org/pypi/supervisor-stdout) package for more details.
