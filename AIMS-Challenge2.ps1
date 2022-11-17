#Azure Instance Metadata service - Allowes to get metadata for surrounding of VM including subscription, resourcegrups, location, compute, tag list etc
#it is a rest API call to get the details.

$resp = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET  -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01"
$respJason =  $resp | ConvertTo-Json -Depth 6
$respJason

#compute only
$resp = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET  -Proxy $Null -Uri "http://169.254.169.254/metadata/instance/compute?api-version=2021-01-01"
$respJason =  $resp | ConvertTo-Json -Depth 6
$respJason

#tags only
$resp = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET  -Proxy $Null -Uri "http://169.254.169.254/metadata/instance/compute/tagList?api-version=2021-01-01"
$respJason =  $resp | ConvertTo-Json -Depth 6
$respJason