const express = require('express')
const serveIndex = require('serve-index')

let sharing_dir = "/app/sharing";
let template_path = "/app/directory.html";
// let template_path = "/Users/leopaul/Desktop/node_file_server/directory.html";
// let sharing_path  = "/Users/leopaul/Desktop/public";
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
