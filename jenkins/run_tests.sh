robot $WORKSPACE/jenkins/uninstall.robot	#ensure running the lastest version of app
robot --exclude Sanity -x testlink_junit.xml -d $WORKSPACE $WORKSPACE/ios/scripts
exit 0
