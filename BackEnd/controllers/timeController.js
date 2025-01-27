const timeModel = require('../models/timeModel')
const bd = require('../db/db')

// exports.getHome = ((req, res) => {

//     const home = new homeModel()
//     const ola = home.ola()

//     res.send(`
//         <h1> batendo na controller</h1>
//         <p> ${ola}</p>
//     `)
// })


// console.log(nome)
// console.log(sigla)

exports.postTime = ((req, res) =>{    
    const{nome, sigla} = req.body

    const adicionar  = new timeModel(nome,sigla)

    const mysqlQuery = `INSERT INTO Times (nome, sigla) VALUES('?', '?') `
   
     
    bd.query(mysqlQuery, [nome, sigla],
    (err, result) => {
        const time = adicionar.time(err,result,res)
    })

}) 

