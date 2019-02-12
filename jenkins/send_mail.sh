export PYTHONPATH=${CALIX_LIB_PATH}
cp ${WORKSPACE}/output.xml ${SEND_MAIL_MODULE_PATH}
cd ${SEND_MAIL_MODULE_PATH}
python mail_notification.py
