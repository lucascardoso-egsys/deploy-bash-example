read -p 'Title: ' title
read -p 'Machines: ' machines
read -p 'Username: ' username
read -sp 'Password: ' password

rm -f final.yml temp.yml  
( echo "cat <<EOF >final.yml";
  cat template.yml;
  echo "EOF";
) >temp.yml
. temp.yml
cat final.yml
