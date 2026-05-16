object camion {
    const cargaDelCamion = []
    const pesoDelCamion = 1000 //va mejor como mehtod
    var cargaActualDelCamion = cargaDelCamion
    

    method cargarUnaCosa(unElemento) {
        cargaActualDelCamion.add(unElemento)
    }
    method descargarUnaCosa(unElemento) {
        cargaActualDelCamion.remove(unElemento)
    }
    method pesoActualDelCamion() {
        cargaActualDelCamion.sum({c => c.peso()})
    }

    method todasLasCosasPesanPar(){
        cargaActualDelCamion.any({c=> c.peso().even()})
    }

    method pesaLoIndicado(unPeso) {
        cargaActualDelCamion.any({c => c.peso() == unPeso})
    }

    method peligrosidadDelPrimeroEs(unaPeligrosidad) {
        cargaActualDelCamion.find({c => c.peligrosidad() == unaPeligrosidad})
    }

    var cosasMuyPeligrosas = []
    method filtrarCosasMasPeligrosasQue(unElemento){
    }

    method noExedioElPesoMaximo() {
        return pesoActualDelCamion() <= 2500
    }

    var nivelDePeligrosidadEnRuta = 10
    
    method noExedioElNivelDePeligrossidadEnRuta(){
        return cargaActualDelCamion.all({c=> c.peligrosidad() <= nivelDePeligrosidadEnRuta})
    }
    method puedeCircularEnRuta(){
     return noExedioElPesoMaximo() && noExedioElNivelDePeligrosidadEnRuta()

    }

    method tieneUnaCosaQuePesaEnetre(unPeso,otroPeso){
        return cargaActualDelCamion.between(unPeso, otroPeso)
    }
    method cosaMasPesada(){
        return cargaActualDelCamion.max({c => c.peso()})
    }
}