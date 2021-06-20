echo "************************"
echo "Checking for 'root' ..."
if [ ${USER} == 'root' ]
then
   echo "'root' user detected. Good."
else
  echo "You can become root with 'sudo -i'"
  echo "Please try again as 'root'" 
  exit
fi

echo "************************"
sleep 3
