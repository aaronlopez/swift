 struct Fizzbuzz {
     func calcula(num:Int)->String {
         var fizz = ""
         if num % 3 == 0 {
             fizz += "Fizz"
         }
         if num % 5 == 0 {
             fizz += "Buzz"
         }
         return fizz.isEmpty ? String(num) : fizz
     }
     
     func calcula2(num:Int)->String {
         if num % 3 == 0 &&  num % 5 == 0{
             return "FizzBuzz"
         }else if num % 3 == 0{
             return "Fizz"
         }
         else if num % 5 == 0 {
             return "Buzz"
         }
         return String(num)
     }
     
     
     func allValues(){
         for i in 1...100 {
             print(calcula(num: i))
         }
             
     }
}

/*
Devuelve Fizz si el número es divisible por tres

Devuelve Buzz si el número es divisible por 5

Devuelve FizzBuzz si el número es dvisible por 3 y por 5
 
Para el resto de caso devuelve el número
 Otherwise, it returns the number.
 
 */
