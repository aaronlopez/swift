import XCTest
@testable import Password

final class PasswordTests: XCTestCase {
    func testMinCarateres() throws {
        let verifier : PasswordVerifier /* = a la clase o estructura que crees para implementar el protocolo */
        let password : Password  /* = a la clase o estructura que crees para implementar el protocolo */
        
        XCTAssertEqual(verifier.verify(password), "La conraseña es demasiado corta")
    }
}
