function orchAuth($username, $pass){
   $auth = @{
      tenancyName = 'VerticalApps'
      usernameOrEmailAddress = '$username'
      password = '$pass'
   }
   $authjson = $auth | ConvertTo-Json
   $authkey = Invoke-RestMethod -SkipCertificateCheck 'https://uipath.verticalapps.com/api/Account/Authenticate' -Method Post -Body $authjson -ContentType 'application/json'
   $authjson = $authkey | ConvertTo-Json
   $token = $authjson | ConvertFrom-Json -AsHashtable
   return $token.result
}