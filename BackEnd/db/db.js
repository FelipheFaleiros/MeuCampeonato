//Inclusão de dependência MySql 
const mysql = require('mysql') 
//escolhido o mysql por se tratar de um pequeno projeto o qual esse sgbd se da melhor para um sistema do porte que está sendo desenvolvido

const db = mysql.createConnection({ //fazer conexao ao db
    host: "localhost",
    user: "root",
    password: "D]agBb]A+6(bA1??", //vai depender se tem senha para entrar no mysql
    database:"meucampeonato"
})

module.exports = db