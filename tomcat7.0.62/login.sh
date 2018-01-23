oc login -u admin 
PW=`oc whoami -t`
docker login -u admin -p $PW 172.30.0.3:5000
