#!/bin/bash

if [ ! -f /.jboss_admin_pass_configured ]; then
    /set_jboss_admin_pass.sh
fi

exec /jboss-4.2.3.GA/bin/run.sh --host=0.0.0.0
