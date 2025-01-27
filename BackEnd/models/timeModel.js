
module.exports = class timeModel {
    constructor(time, sigla){
        this.time = time
        this.sigla = sigla
    }
//if ...
    // ola(){
    //     return 'model!'
    // }
    adicionar(err, result,res){

        result.map(time => {
            console.log(time)
            
        })

        if(err) return res.status(401).json({msg: 'Não foi possivel adicionar time'})
            else return res.status(200).json()

        return 'metodo !'
    }
}
