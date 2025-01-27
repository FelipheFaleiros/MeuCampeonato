//Inclusão de dependência MySql 
const mysql = require('mysql') 
//escolhido o mysql por se tratar de um pequeno projeto o qual esse sgbd se da melhor para um sistema do porte que está sendo desenvolvido

//conexão
const db = mysql.createPool({ //fazer conexao ao db
    host: "localhost",
    user: "root",
    password: "D]agBb]A+6(bA1??", //vai depender se tem senha para entrar no mysql
    database:"meucampeonato"
}) 

// db.connect( function(err){
//     console.log("Conexão ao banco de dados realizada com sucesso")


//     if (erro){
//         console.log("Falha na conexão ao banco de dados")
//         console.error('error connecting: ' + err.stack);
//     }
// });


module.exports = db