object tom {
    var energia = 50

    method correr(metrosRecorridos) {
      energia = energia - (metrosRecorridos / 2)
    }

    method energiaDeTom() = energia

    method comer(unRaton) {
      energia = energia + (12 + unRaton.calcularPeso())
    } 

    method velocidadMax() = 5 + (energia / 10)

    method puedeCazar(unRaton, distancia) = distancia <= energia

    method cazar(unRaton, distancia) {
        if (tom.puedeCazar(unRaton, distancia)) {
            tom.correr(distancia)
            tom.comer(unRaton)
            return true
        }
        else {
            return false
        }
    }
}

object jerry {
    var edadActual = 2
    var pesoActual = 20

    method calcularPeso() = pesoActual * edadActual 
    
    method consultarEdad() = edadActual

    method crecer(años) {
      edadActual = edadActual + años
    } 
}

object nibbles {
    const pesoActual = 35

    method calcularPeso() = pesoActual  
}

object chimuelo {
  var pesoActual = 50

  method calcularPeso() = pesoActual
}

// Inventar otro ratón