#!/usr/bin/env bash

UPDATES=`apt list --upgradable | wc -l `
let 'UPDATES=UPDATES-1'

if [[ $UPDATES -eq 0 ]]
then
  echo "|iconName=object-select-symbolic"
else
  echo "$UPDATES"
fi
echo "---"
echo "Refresh | iconName=view-refresh-symbolic bash='aptdcon --refresh; touch $0' terminal=false"
echo "Upgrade | iconName=document-save-symbolic bash='sudo apt upgrade -y; touch $0; exit'"
