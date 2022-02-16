
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
        
        repeat{
            let p1 = TPP.allCases.randomElement()!
            let p2 = TPP.allCases.randomElement()!
            let result = compare(p1: p1, p2: p2)
            switch result {
            case .gana:
                print("Jugador 1 gana \(p1.rawValue) \(p2.rawValue)")
            case .pierde:
                print("Jugador 2 gana  \(p1.rawValue) \(p2.rawValue)")
            case .empata:
                print("Empatan  \(p1)" )

            }
        }while(!endGame())
     
    }
    
    func isWinner(player:Int) -> Bool{
        return player  >= 3
    }
    
    func endGame()-> Bool {
        if isWinner(player: marcadorP1) || isWinner(player: marcadorP2){
            return true
        }
        return false
    }
    
   mutating func compare(p1:TPP, p2:TPP)->Result{
       if p1 == p2 {
           return .empata
       }
      
       if p1 == .tijera && p2 == .papel {
           marcadorP1 += 1
           return .gana
       }
       if p1 == .papel && p2 == .piedra {
           marcadorP1 += 1

           return .gana
       }
       if p1 == .piedra && p2 == .tijera {
           marcadorP1 += 1

           return .gana
       }
       
       marcadorP2 += 1
        return .pierde
    }
        
    
}

enum TPP:String, CaseIterable {
    case tijera = "✂️"
    case papel = "🧻"
    case piedra = "🪨"
}
enum Result {
    case  gana
    case pierde
    case empata
}
