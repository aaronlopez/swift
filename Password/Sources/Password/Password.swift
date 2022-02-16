protocol PasswordVerifier {
    
    func verify(_ password: Password) -> String
    
}

protocol Password {
    
}

/* Implementa estos protcolos para cumplir las siguientes reglas de negocio
 Prepara el testantes de hacerlo
 - El password tiene que como minimo 14 caracteres
 - El password tiene que tenerm como minimo una letra mayuscula
 - El password tiene que tenerm como minimo una letra minuscula
 - El password tiene que tener como minimo un número
 - El password tiene que tener como minimo un simbolo de la siguiente lista !,.=?-
 - El pasword no puede tener más de 2 números seguidos
 
Para cada regla que no se cumpla devolveremos una string especifica por ejemplo si no tiene 14 caracteres devolveremos "La conraseña es demasiado corta"
 Si cumple todos los criterios devolveremos una string vacia
 
 Debes hacer los tests antes del ejercicio
 */
