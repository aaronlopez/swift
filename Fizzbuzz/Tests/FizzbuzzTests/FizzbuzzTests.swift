import XCTest
@testable import Fizzbuzz

final class FizzbuzzTests: XCTestCase {
    func test1() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Fizzbuzz().calcula(num: 1), "1")
    }
    
    func test3() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Fizzbuzz().calcula(num: 3), "Fizz")
    }
    
    func test5() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Fizzbuzz().calcula(num: 5), "Buzz")
    }
    
    func test15() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        Fizzbuzz().allValues()
        XCTAssertEqual(Fizzbuzz().calcula(num: 15), "FizzBuzz")
    }
}
