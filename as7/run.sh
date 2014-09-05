#!/bin/bash

if [ "$JBOSS_PASS" = "**Random**" ]; then
    unset JBOSS_PASS
fi

if [ ! -f /.jboss_admin_pass_configured ]; then
    /set_jboss_admin_pass.sh
fi

exec /jboss-as-7.1.1.Final/bin/standalone.sh -b=0.0.0.0
