#/bin/bash

if [ -f /.jboss_admin_pass_configured ]; then
    echo "JBoss admin user's password has been configured!"
    exit 0
fi

#generate password
PASS=${JBOSS_PASS:-$(pwgen -s 12 1)}
_word=$( [ ${JBOSS_PASS} ] && echo "preset" || echo "random" )

echo "=> Configuring admin user with a ${_word} password in JBoss"
/jboss-as-7.1.1.Final/bin/add-user.sh --silent=true admin ${PASS}
echo "=> Done!"
echo "========================================================================"
echo "You can now configure to this JBoss server using:"
echo ""
echo "    admin:${PASS}"
echo ""
echo "========================================================================"

touch /.jboss_admin_pass_configured
