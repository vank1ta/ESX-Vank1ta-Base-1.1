# ESX-Base-Server-Castillo-5M

                    ████████░░   █████░░███░░░░░░███ ░█████░░░░  ██████████░░███████
                    ███ ░░░░░░  ██░░ ██░░███░░░░███░░███ ███ ░░░ ███░░░░░░░░░███░░░░
                    ████████ ░ ██░░░ ██░░ ███░░███░░███░░ ███ ░░ ███░░█████░░███████
                    ░░░░░███   █████████░░░██████░ ███████████░░ ███░░░░███░░███░░░░
                    ████████  ███░░░  ███░░░████ ░████░░░░ ████░ ██████████░░███████

                                      Версия на сървъра v1.1

Редактирате server.cfg 

# Steam Web API.  Visit https://steamcommunity.com/dev/apikey to generate your own.
set steam_webApiKey "Вашият steam apikey от посочения линк горе."

# DB connection string
set mysql_connection_string "server=localhost;database=Името на вашата датабаза;userid=Потребител/обикновенно е root и на localhost и на vps;password=паролата ви за phpmyadmin ако сте на vps ако сте на localhost не пишете нищо"
set es_enableCustomData 1

sv_hostname "SAVAGE™ DEV SERVER" - Името на вашият сървър.

# License key for your server (https://keymaster.fivem.net) 
sv_licenseKey Тук вашият licence key от посочения горен линк може да го вземете, не слагайте никакви кавички директно поставяте key-a.

--------------------------------------------------------------------
И не пипате нищо друго за редактиране освен някой ресурс или скрипт.
--------------------------------------------------------------------

####################################################################

За да си нагласите proxy-тата за screnshosts на телефона 

Отивате на server-data\resources\[phone]\gcphone\client.lua
Намирате exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks", data.field, function(data)
Отивате във вашата дискорд група създавате си канал "снимки от телефона" 
Редактиране на канала/Интеграции/webhooks 
Създавате си един бот и копирате линка на вашият бот
Линка трябва да изглежда нещо такова https://discord.com/api/webhooks/843461624253120522/pL4NDuDuW1JCQVRC7zLRW2FT_94Ytl40rXCQbbQFwUR4KE63UPOB0du5kYWKqoBxg8Xh

Отново се връщате на server-data\resources\[phone]\gcphone\client.lua
И реда който намерихте 
exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks", data.field, function(data)
Го променяте на 
exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks/843461624253120522/pL4NDuDuW1JCQVRC7zLRW2FT_94Ytl40rXCQbbQFwUR4KE63UPOB0du5kYWKqoBxg8Xh", data.field, function(data)
Тоест със вашият линк за discord бота който създадохте.

-----------------------------------------------------------------
За да промените името над hud-a за храна 
-----------------------------------------------------------------

server-data\resources\[hud]\watermark\watermark.lua и го променята на вашето име.

Ако имате някакви въпроси относно сървъра може да ги зададете на на тикет в discord група https://discord.gg/52GzQTjRyq


########################################################################
   # Този сървър е направен от Собственика Castillo 5M™: https://discord.gg/52GzQTjRyq
########################################################################

Extra clothes. - Понеже са доста а не ми се занимава да ги качвам излишно на сървъра. Който има желание може да си ги свали и да си ги прикачи на сървъра. 
Линк за сваляне ->  https://dox.abv.bg/download?id=2ee10d4d79#
