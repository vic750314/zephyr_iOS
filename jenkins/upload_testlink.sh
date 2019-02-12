FW_NAME=${APP_Version} > propsfile

if [ "${Upload_Testlink}" == "true" ] ; then
    echo "==>Result sould be uploaded to Teslink. Start to copy testlink_junit.xml"
    sed -i -- 's,classname=.*" name,classname="'"$BUILD_URL"'" name,g' $WORKSPACE/testlink_junit.xml
else
    echo "==>Not Upload Result to Testlink. "
    echo '<?xml version="1.0" encoding="UTF-8"?>' > testlink_junit.xml
    echo '<testsuite failures="0" tests="1" errors="0" name="Tc Init" skip="0">' >> testlink_junit.xml
    echo '<testcase classname="Tc Init" name="tc_init" time="5">' >> testlink_junit.xml
    echo '</testcase>' >> testlink_junit.xml
    echo '</testsuite>' >> testlink_junit.xml
fi
