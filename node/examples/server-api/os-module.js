const { error } = require('console')

//retorna o sistema operacional que esta sendo executado o node
//console.log(os.platform())


function checkStatusMemory(){
  const os = require('os')
  const mem= parseInt(os.freemem() / 1024 / 1024)
  const total = parseInt(os.totalmem()/ 1024/ 1024)
  const percentage = parseInt((mem/total)*100)
  const statistics = {
    memTotal: `${total}MB`,
    freemem: `${mem}MB`,
    usage: `${percentage}%`
  }
  //console.log(statistics)
  console.clear();
  console.table(statistics)
  
}
setInterval(checkStatusMemory, 1000);
