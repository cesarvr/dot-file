#!/bin/bash


# Nice shorcut to ask for help
# Usage  hlpoc edit  // this will give you the <manpage> for oc edit
#

function hlpoc() {
 oc $1 --help | less
}

function is(){
  oc get is --namespace $1 | grep $2 
}
