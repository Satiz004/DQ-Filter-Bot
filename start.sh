if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/DQ-Filter-Bot.git /DQ-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-Filter-Bot
fi
cd /DQ-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
