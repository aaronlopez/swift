import XCTest
@testable import Password

final class PasswordTests: XCTestCase {
    func testMinCarateres() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "ppppppppppppp")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "La conraseña es demasiado corta")
    }
    
    func testAtLeat1UpperCarateres() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "ppppppppppppppppppppppppppppppppppp")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "uppernot")
    }
    
    func testAtLeast1LowerCase() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "AAAAAAAAAAAAAAAAAAAAAAAAA")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "lowernot")
    }
    
    func testAtLeatANumber() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "aAAAAAAAAAAAAAAAAAAAAAAAA")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "connum")
    }
    func testAtLeastASimbol() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "aAAAAAAAAAAAAAAAAAA1AAAAA")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "sinSymbolo")
    }
    
    func testPasswordContainsExclamation() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "aAAAAAAAAAAAAAAAAAA1AAA!A")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "Ok")
    }
    
    func testNotContainsTwoNumbersConsecutive() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = PPP(str: "aAA1A3A4A5A55AAAAAA221AAA!A")  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "two consecutive")
    }
    
    func testUsingString() throws {
        let verifier : PasswordVerifier = P()/* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password = "aAA1A3A4A5A55AAAAAA221AAA!A"  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "two consecutive")
    }
}
