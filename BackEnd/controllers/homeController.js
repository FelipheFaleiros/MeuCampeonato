const homeModel = require('../models/homeModel')


exports.getHome = ((req, res) => {

    const home = new homeModel()
    const ola = home.ola()

    res.send(`
        <h1> batendo na controller</h1>
        <p> ${ola}</p>
    `)
})

exports.postHome = ((req, res) =>{
    
    const home = new homeModel()
    const ola = home.ola()

    res.send(`
        <h1> batendo na controller</h1>
        <p> ${ola}</p>
    `)
})
