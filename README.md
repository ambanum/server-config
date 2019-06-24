After each change to the server configuration, please run `./dl-conf.sh` and commit your changes.

## Backup of data

```
rsync -rltzvh cloud@desinfo.quaidorsay.fr:/mnt/data/political-ads-scraper/ .

ssh -NT -L 27018:localhost:27017 cloud@desinfo.quaidorsay.fr
mongodump --host 127.0.0.1:27018 --out=dump_mongodb_desinfo --gzip

ssh -NT -L 27019:localhost:27017 cloud@desinfo.quaidorsay.fr
mongodump --host 127.0.0.1:27019 --out=dump_mongodb_sismo --gzip
```
