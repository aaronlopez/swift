import Foundation
protocol PasswordVerifier {
    
    func verify(_ password: Password) -> String
    
}

protocol Password {
    func hasAllLowerCase() -> Bool
    func hasAllUpperCase() -> Bool
    func hasANumber() -> Bool
    func hasContainsSymbol() -> Bool
    func hasMoreTwoConsecutiveNumbers() -> Bool
    func count() -> Int
}

struct PPP : Password {
    var str: String

    func count() -> Int {
        return str.count
    }
    
    func hasMoreTwoConsecutiveNumbers() -> Bool {
        var counter = 0
        for c in str {
            if c.isNumber {
                counter += 1
               
                if counter > 2 {
                    return true
                }
            }else{
                counter = 0
            }
        }
        
        return false
    }
    
    func hasContainsSymbol() -> Bool {
        let symbols = "!,.=?"
        for c in str {
            if symbols.contains( c) {
                return true
            }
        }
        return false
    }
    
    func hasANumber() -> Bool {
        for c in str {
            if c.isNumber {
             return true
            }
        }
        return false
    }
    
    func hasAllUpperCase() -> Bool {
        for c in str {
            if c.isLowercase {
             return false
            }
        }
        return true
    }
    
    func hasAllLowerCase() -> Bool {
            for c in str {
                if c.isUppercase {
                 return false
                }
            }
            return true
    }
    
}

struct P: PasswordVerifier{
    func verify(_ password: Password) -> String {
        if password.count() < 14 {
            return "La conraseña es demasiado corta"
        }
       
        if password.hasAllLowerCase() {
            return "uppernot"
        }
        
        if password.hasAllUpperCase(){
            return "lowernot"
        }
        
        if !password.hasANumber() {
            return "connum"
        }
        
        if !password.hasContainsSymbol(){
            return "sinSymbolo"
        }
        if password.hasMoreTwoConsecutiveNumbers(){
            return "two consecutive"
        }
        return "Ok"
    }
}

/*
  
 */

/* Implementa estos protcolos para cumplir las siguientes reglas de negocio
 Prepara el testantes de hacerlo
 - El password tiene que como minimo 14 caracteres
 - El password tiene que tenerm como minimo una letra mayuscula
 - El password tiene que tenerm como minimo una letra minuscula
 - El password tiene que tener como minimo un número
 - El password tiene que tener como minimo un simbolo de la siguiente lista !,.=?-
 - El password no puede tener más de 2 números seguidos
 
Para cada regla que no se cumpla devolveremos una string especifica por ejemplo si no tiene 14 caracteres devolveremos "La conraseña es demasiado corta"
 Si cumple todos los criterios devolveremos una string vacia
 
 Debes hacer los tests antes del ejercicio
 */



//Extra sample
extension String: Password {

    func count() -> Int {
        return self.count
    }
    
    func hasMoreTwoConsecutiveNumbers() -> Bool {
        var counter = 0
        for c in self {
            if c.isNumber {
                counter += 1
               
                if counter > 2 {
                    return true
                }
            }else{
                counter = 0
            }
        }
        
        return false
    }
    
    func hasContainsSymbol() -> Bool {
        let symbols = "!,.=?"
        for c in self {
            if symbols.contains( c) {
                return true
            }
        }
        return false
    }
    
    func hasANumber() -> Bool {
        for c in self {
            if c.isNumber {
             return true
            }
        }
        return false
    }
    
    func hasAllUpperCase() -> Bool {
        for c in self {
            if c.isLowercase {
             return false
            }
        }
        return true
    }
    
    func hasAllLowerCase() -> Bool {
            for c in self {
                if c.isUppercase {
                 return false
                }
            }
            return true
    }
    
}
