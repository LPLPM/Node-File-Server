const express = require('express')
const serveIndex = require('serve-index')

let sharing_path = "/app/sharing";
let template_path = "/app/directory.html";

let filter = function (filename, index, files, dir){
  return !filename.toLowerCase().includes("@eadir");
}

const app = express()
app.use(
  '/',
  express.static(sharing_path),
  serveIndex(sharing_path, {'icons':true, 'template':template_path, 'filter':filter})
)

const port = process.env.PORT || 8080
app.listen( port, ()=>console.log(`listening on port: ${port}...`) )
