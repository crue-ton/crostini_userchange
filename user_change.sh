##
## WARNING! THIS SCRIPT IS FOR CROSTINI THAT IS RUNNING UNDER DEBIAN!
##

echo 'Start? [y/N]'
read yorn1

# check if users input is Y/y
if [ "$yorn1" != "${yorn1#[Yy]}" ] ;
then
  current_user=$(grep 1000:1000 /etc/passwd|cut -d':' -f1)
  echo 'What do you want to change your username to?'
  read new_user
  echo 'Changing username...'
  killall -u $current_user
  sleep 1
  groupmod -n $new_user $current_user
  usermod -md /home/$new_user -l $new_user $current_user
  usermod -aG users $new_user
  loginctl enable-linger $new_user
  read -p 'Shutdown now? [y/N]' yorn2
  if [ "$yorn2" != "${yorn2#[Yy]}" ] ;
  then
    echo 'Shutting down...'
    shutdown -h now
  fi
  if [ "$yorn2" != "${yorn2#[Nn]}" ] ;
  then
    echo 'Exiting program...'
  fi
fi
# check if users input is N/n
if [ "$yorn1" != "${yorn1#[Nn]}" ] ;
then
  echo 'leaving...'
  exit 1
fi