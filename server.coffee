express = require 'express'
serveStatic = require 'serve-static'
# app_config = require('./config')()

app = express()
app.use serveStatic(__dirname + '/', {index: ['index.html']})



port = process.env.PORT || 5000
server = app.listen port, () ->
  host = server.address().address
  console.log 'Node app listening at http://%s:%s', host, port
