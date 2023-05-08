
file=sync.conf
egrep -v "^#|^$" $file | while read line; do
  source_repo=$(echo $line | awk '{print $1}')
  target_repo=$(echo $line | awk '{print $2}')
  echo "Syncing $source_repo to $target_repo"
  
done