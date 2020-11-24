#! /bin/bash
# Use this to export a shell log in headless mode
# exec >/golem/work/output.log 2>&1;

# Start yagna service in the background and log it
echo "Starting Yagna"
/root/.local/bin/yagna service run > /golem/work/yagna.log 2>&1 &
echo "Giving Yagna 5 seconds to start"
sleep 5
echo "Getting the app key and export it to environment"
key=$(/root/.local/bin/yagna app-key create requester)
export YAGNA_APPKEY=$key
echo "Getting some free money"
/root/.local/bin/yagna payment init -r
echo "Open our python environment"
source ~/.envs/general-golem/bin/activate
echo "Running python script"
python3 ./requester.py