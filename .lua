-- PID: ZAQSYCKAfryjYAjMObjJXkz9ZaIphL2pJRkIS8wbDA4
-- IDE: https://ide.betteridea.dev/?getcode=ZAQSYCKAfryjYAjMObjJXkz9ZaIphL2pJRkIS8wbDA4

_0RBIT = "WSXUI2JjYUldJ7CKq9wE1MGwXs-ldzlUlHOQszwQe0s"

Handlers.add("idessien", 
    Handlers.utils.hasMatchingTag("Action", "idessien-github"), 
    function(msg)
        local token = msg.Tags.Token 
        local currency = msg.Tags.Currency
        local url = "https://api.coingecko.com/api/v3/simple/price?ids=" .. token .. "&vs_currencies=" .. currency
        ao.send({
            Target = _0RBIT,
            Action = "Get-Real-Data",
            Url = url 
        }) 
        Handlers.utils.reply("PriceFetch")(msg)
    end
)
