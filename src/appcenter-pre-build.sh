#!/usr/bin/env bash
if [ "$APPCENTER_BRANCH" == "QA" ]
then
/usr/libexec/plistbuddy -c "Set :CFBundleDisplayName VSACXamarin.$APPCENTER_BRANCH" "iOS/Info.plist"
fi

if [ -z "$VSAC_Key" ]
then
echo "You need define the VSAC_Key variable in App center"
–
exit
fi

sed -i -e "s/\[VSAC_APIKEY]/$VSAC_Key/g" Constants.cs
