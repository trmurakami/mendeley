#!/bin/bash
link="https://api.mendeley.com/catalog?view=stats&doi="
linkmeio="&access_token="

cat $1 $2 | while read lin
	    do curl "${link}${lin}${linkmeio}${2}" |  jq -r '.[]' | tr "\n" "\t" | cat - <(echo) >> outputmendeley.csv
	    # do echo $link$lin$linkmeio$2
	    done;
