#!/bin/bash

TAGS_DIR=/home/sbashar/development/
if [[ $# -ge 1 ]]
then
    TAGS_DIR="/home/sbashar/development/"
fi

echo "Usage : $0 Directory"
echo "Building tags in ${TAGS_DIR}"

#su sbashar <<EOF
#1
#EOF

cd $TAGS_DIR
rm -f tags gctags cscope.*

find  $PWD  \( -name "*.[chly]" -o -name "*.[ch]pp" -o -name "*.cc" -o -name "*.pcc" -o -name "*.hh" \) -type f |
      egrep -v '/.git/' > cscope.files
#find $ODBC_HOME/include -name "*.h" >> cscope.files
#find $CPPUNIT_HOME/include -name "*.h" >> cscope.files
#find $OPENSSL_HOME/include -name "*.h" >> cscope.files
#find $CURL_HOME/include -name "*.h" >> cscope.files
#find $ORACLE_HOME/rdbms/public $ORACLE_HOME/xdk/include $ORACLE_HOME/ldap/public $ORACLE_HOME/precomp/public -name "*.h" >> cscope.files
#find  $APICORE  \( -name "*.spc" -o -name "*.bdy" -o -name "*.sql" \) | grep -v RTEST >> cscope.files
#find  $APICAT  \( -name "*.spc" -o -name "*.bdy" -o -name "*.sql" \) | grep -v RTEST >> cscope.files
#find  $APICUSTACC  \( -name "*.spc" -o -name "*.bdy" -o -name "*.sql" \) | grep -v RTEST >> cscope.files
echo "Building cscope output in $PWD"
/usr/bin/cscope -b -q

#find $PWD -name "*.py" >> cscope.files
#find $PWD -name "*.sql" >> cscope.files
#find $PWD -name "*.js" >> cscope.files

#below is Exuberant Ctags
echo "Building ctags"
ctags --c++-kinds=+p --python-kinds=-i --fields=+iaS --extra=+q --langmap=C:+.pc,C++:+.pcc,sql:+.sql.bdy -h .spc -L cscope.files

exit
#comment above exit for gnutags
#below is gnu ctags
echo "gctags -o gctags -C --defines --globals --members -T \c" > ctagscmd

for file in `find $CCM_ROOT/CORE $CCM_ROOT/VPACORE $CCM_ROOT/RATE $CCM_ROOT/BILL -name "SRC" -type d`
do
    echo "$file/*.[pc]c $file/*.hh $file/*.[ch] \c"
done >> ctagscmd

touch tags
echo "building GNU ctags"
. ctagscmd >/dev/null 2>&1

rm -f ctagscmd
