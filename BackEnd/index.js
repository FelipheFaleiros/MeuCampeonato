const express = require('express')
const app = express()

app.get('/', (req,res)=>{  //caminho, requisição, resposta
    res.send('<h1 class="h3 mb-3 font-weight-normal">Meu Campeonato.</h1>')
})

app.get('/sobre', (req,res)=> {
    res.send('  <p class="mt-5 mb-3 text-muted">Desenvolvido por &copy; Feliphe 2025</p>')
})



app.listen(3001, ()=>{
    console.log('server está na port 3000') //essa mensagem só aparece no console
})
