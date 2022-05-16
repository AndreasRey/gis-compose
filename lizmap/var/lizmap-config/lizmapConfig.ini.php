;<?php die(''); ?>
;for security reasons , don't remove or modify the first line

hideSensitiveServicesProperties=1

;Services
;list the different map services (servers, generic parameters, etc.)
[services]
wmsServerURL="http://qgismapserver:8080/ows/"
;List of URL available for the web client
onlyMaps=0
defaultRepository=
defaultProject=
cacheStorageType=redis
;cacheStorageType=sqlite => store cached images in one sqlite file per repo/project/layer
;cacheStorageType=file => store cached images in one folder per repo/project/layer. The root folder is /tmp/
cacheRedisHost=redis
cacheRedisPort=6379
cacheExpiration=0
cacheRedisDb=1
cacheRedisKeyPrefix=
; default cache expiration : the default time to live of data, in seconds.
; 0 means no expiration, max : 2592000 seconds (30 days)
proxyMethod=curl
; php -> use the built in file_get_contents method
; curl-> use curl. It must be installed.
debugMode=0
; debug mode
; on = print debug messages in lizmap/var/log/messages.log
; off = no lizmap debug messages
cacheRootDirectory="/tmp/"
; cache root directory where cache files will be stored
; must be writable
allowUserAccountRequests=off

; path to find repositories
rootRepositories="/srv/projects"

; Use relative path
relativeWMSPath=true






[repository:ruralwaterpoints]
label=RuralWaterPoints
path="/srv/projects/RuralWaterPoint/"
allowUserDefinedThemes=1

















































[repository:testing]
label=Testing
path="/srv/projects/Imported/"
allowUserDefinedThemes=1

































[repository:projects]
label=Projects
path="/srv/projects/Projects/"
allowUserDefinedThemes=1











