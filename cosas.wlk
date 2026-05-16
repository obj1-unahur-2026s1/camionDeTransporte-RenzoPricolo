object knightRider {
    const peso = 500
    const peligrosidad = 10

    method peso() {
        return peso
    }
    method peligrosidad() {
        return peligrosidad
    }
}

object bumblebee {
    const peso = 500
    const peligrosidad = 15
    var esAuto = true

    method peso() {
        return peso
    }
    method peligrosidad() {
        if (esAuto) {
            return peligrosidad
        }
        else {
            return 30
        }
    }
}

object paqueteDeLadrillos {
    const peso = 2
    const peligrosidad = 10
    var cantidadDeLadrillos = 1

    method peso() {
        return peso * cantidadDeLadrillos
    }
    method peligrosidad() {
        return peligrosidad * cantidadDeLadrillos
    }
}

object arena {
    var peso = 1
    const peligrosidad = 1

    method peso() {
        return peso
    }
    method peligrosidad() {
        return peligrosidad
    }
}

object bateriaAntiaerea {
    const peso = 300
    const peligrosidad = 100
    var tieneMisiles = true

    method peso() {
        if (tieneMisiles){
            return peso
        }
        else {
            return 200
        }
    }
    method peligrosidad() {
        if (tieneMisiles){
            return peligrosidad
        }
        else {
            return 0
        }
    }
}

object contenedorPortuario {
    const peso = 100
    const peligrosidad = 10
    var contenido = []

    method peso() {
        return peso + contenido.sum({c => c.peso()})
    }
    method peligrosidad() {
        if (contenido.isEmpty()) {
            return 0
        }
        else {
            return contenido.max({c=> c.peligrosidad()})
        }
    }
}

object residuosRadioactivos {
    var peso = 1
    const peligrosidad = 200

    method peso() {
        return peso
    }
    method peligrosidad() {
        return peligrosidad
    }
}

object embalajeDeSeguridad {
    const peso = 500
    const peligrosidad = 10
    var contenido = []

    method peso() {
        contenido.sum({c => c.peso()})
    }
    method peligrosidad() {
        contenido.sum({c => c.peligrosidad() / 2})
    }
}