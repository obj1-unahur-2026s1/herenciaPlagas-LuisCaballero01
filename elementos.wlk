class Elemento{
    method esBueno()
    method recibirAtaqueDe(unaPlaga)
}
class Hogar inherits Elemento{
    var nivelDeMugre
    const confortOfrecido

    override method esBueno() = nivelDeMugre*2 <= confortOfrecido
    override method recibirAtaqueDe(unaPlaga){
        nivelDeMugre += unaPlaga.nivelDeDaño()
    }
}
class Huerta inherits Elemento{
    var capacidadDeProduccion
    var nivelNoFijo
// que carajo se hará acá para que sea igual para todos.

    override method esBueno() = capacidadDeProduccion > nivelNoFijo
    override method recibirAtaqueDe(unaplaga){
        capacidadDeProduccion -= unaplaga.nivelDeDaño()*0.1 + (if (unaplaga.transmiteEnfermedad()) 10 else 0)
    }
}
class Mascota inherits Elemento{
    var nivelDeSalud

    override method esBueno() = nivelDeSalud > 250
    override method recibirAtaqueDe(unaPlaga){
        if (unaPlaga.transmiteEnfermedad())
            nivelDeSalud -= unaPlaga.nivelDeDaño()
    }
}
class Barrios{
    const elementos = []

    method esCopado() = self.cantidadBuenos() > self.cantidadMalos()

    method cantidadBuenos() = elementos.count({e => e.esBueno()})
    method cantidadMalos() = elementos.count({e => !e.esBueno()})
}