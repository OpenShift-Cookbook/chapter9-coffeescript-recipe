express = require('express')
app = express()
ip = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1'
port = process.env.OPENSHIFT_NODEJS_PORT || 3000
 

# App Routes
app.get '/', (request, response) ->
  response.send 'Hello World!!'
 
# Listen
app.listen port,ip
console.log "Express server listening on port http://%s:%d", ip,port