import XCTest
@testable import TijerasPapelPiedra
 class TijerasPapelPiedraTests: XCTestCase {
    var juego: TijerasPapelPiedra = TijerasPapelPiedra()
   
    func testTijeraGanaPapel() throws {
        XCTAssertEqual(self.juego.compare(p1: .tijera, p2: .papel), .gana)
    }
   
    func testPapelGanaPiedra() throws {
         XCTAssertEqual(self.juego.compare(p1: .papel, p2: .piedra), .gana)
    }
     
    func testPiedraGanaTijeras() throws {
        XCTAssertEqual(self.juego.compare(p1: .piedra, p2: .tijera), .gana)
    }
    
     func testigualesEmpata() throws {
         XCTAssertEqual(self.juego.compare(p1: .papel, p2: .papel), .empata)
     }
     
     func testTijeraPierdePiedra() throws {
         XCTAssertEqual(self.juego.compare(p1: .tijera, p2: .piedra), .pierde)
     }
    
     func testPapelpierdeTijera() throws {
          XCTAssertEqual(self.juego.compare(p1: .papel, p2: .tijera), .pierde)
     }
      
     func testPiedrapierdePapel() throws {
         XCTAssertEqual(self.juego.compare(p1: .piedra, p2: .papel), .pierde)
     }
     
     func testActualizaP1MarcadorSiGana() throws {
         _ = juego.compare(p1: .piedra, p2: .tijera)
         XCTAssertEqual(self.juego.marcadorP1, 1)
         XCTAssertEqual(self.juego.marcadorP2, 0)

     }
     func testActualizaP2MarcadorSiGana() throws {
         _ = juego.compare(p1: .tijera, p2: .piedra)
         XCTAssertEqual(self.juego.marcadorP1, 0)
         XCTAssertEqual(self.juego.marcadorP2, 1)
     }
     
     func testFinalizaJuegoSiP1Llega3() throws {
         juego.marcadorP1 = 3
         XCTAssertEqual(self.juego.endGame(), true)
    }
     func testFinalizaJuegoSiP2Llega3() throws {
         juego.marcadorP2 = 3
         XCTAssertEqual(self.juego.endGame(), true)
    }
     
     func testPlay() throws {
         self.juego.play()
         XCTAssertEqual(self.juego.marcadorP1 >= 3 || self.juego.marcadorP2 >= 3 , true)
    }
}
