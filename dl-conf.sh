rm -r conf/*
while read l; do
  rsync -Rrpv cloud@desinfo.quaidorsay.fr:$l conf
done <conflist
