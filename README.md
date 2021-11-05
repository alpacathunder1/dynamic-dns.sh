# dynamic-dns.sh

This is a silly little script I wrote to automatically update my NameCheap dynamic dns.  I just wanted an alternative to the ddclient container I was using.

It should be able to handle some errors, there's a grep to get the IP address only, as well as a check to make sure it's between the character range.  Not much else though, its literally an 11 line shell script, lmao.

Just edit the `DOMAIN` and `PASSWORD` enviornment variables in the script and throw it in your crontab.
