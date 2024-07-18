if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vicky-816/FileShare /FileShare
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FileShare
fi
cd /FileShare
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
