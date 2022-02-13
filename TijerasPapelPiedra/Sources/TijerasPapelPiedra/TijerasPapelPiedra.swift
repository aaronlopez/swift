
struct TijerasPapelPiedra {
    var marcadorP1 = 0
    var marcadorP2 = 0
    /*
     - Definiendo las reglas de negocio
     - Tijera gana a papel
     - Papel gana a Piedra
     - Piedra gana a Tijeras
     - Si son iguales empatan
     - Cada vez que un jugador gana se añade al marcador
     -
     - El juego termina cuando un jugador llega a 3 victorias
     */
    mutating func play(){
     
    }
    
    func endGame()-> Bool {
        return false
    }
    
   mutating func compare(p1:TPP, p2:TPP)->Result{
        
        return .gana
    }
        
    
}

enum TPP:CaseIterable {
    case tijera
    case papel
    case piedra
}
enum Result {
    case  gana
    case pierde
    case empata
}
