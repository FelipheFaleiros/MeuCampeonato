const mysql = require('mysql') 
//escolhido o mysql por se tratar de um pequeno projeto o qual esse sgbd se da melhor para um sistema do porte que está sendo desenvolvido

mysql.createPool({ //fazer conexao ao db
    host: "localhost",
    user: "root",
    password: "",
    database:"meuCampeonato" //preciso criar o banco
})

module.exports = mysql