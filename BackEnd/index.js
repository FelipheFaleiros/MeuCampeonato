const express = require('express')
const app = express()
// const cors = require("cors")

const timeRouter = require('./routes/timeRoute')

app.use(express.json())
// app.use(cors)
app.use(timeRouter)

app.get('/', (req,res)=>{  //caminho, requisição, resposta
    res.send('<h1 class="h3 mb-3 font-weight-normal">Meu Campeonato.</h1>')
})

app.get('/sobre', (req,res)=> {
    res.send('  <p class="mt-5 mb-3 text-muted">Desenvolvido por &copy; Feliphe 2025</p>')
})



app.listen(3000, ()=>{//if error in node, change the output port
    console.log('server está na port 3000 defunt ') //essa mensagem só aparece no console
})
