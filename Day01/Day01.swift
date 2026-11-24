//
//  Day01.swift
//  100 Days of SwiftUI – Day 1
//  Variables, Constants, Strings, and Numbers
//  변수, 상수, 문자열, 숫자
//

import Playgrounds
import Cocoa

#Playground {
    print("Hello, Playground!")

    // MARK: - 1. Variables | 변수 (var)

    var greeting = "Hello, playground"
    // var                 : Create a new variable | 새 변수 생성
    // greeting            : Variable name | 변수 이름
    // =                   : Assign a value | 값 할당
    // "Hello, playground" : Initial value | 초기값

    var name = "Ted"
    name = "Rebecca"   // no `var` when changing an existing variable | 기존 변수 변경 시 var 생략
    name = "Keeley"

    // MARK: - 2. Constants | 상수 (let)

    let character = "Daphne"
    // character = "Eloise"     // ❌ Error: can't change a constant | 상수는 변경 불가
    // character = "Francesca"  // ❌ Error

    // MARK: - 3. print()

    var playerName = "Roy"
    print(playerName)   // Roy

    playerName = "Dani"
    print(playerName)   // Dani

    playerName = "Sam"
    print(playerName)   // Sam

    // MARK: - 4. camelCase naming | 이름 짓기 규칙

    let managerName = "Michael Scott"
    let dogBreed = "Samoyed"
    let meaningOfLife = "How many roads must a man walk down?"

    // MARK: - 5. Strings | 문자열

    let actor = "Denzel Washington"
    let filename = "paris.jpg"
    let result = "⭐️ You win! ⭐️"

    // Use \" for quotes inside a string | 문자열 안의 따옴표는 \"
    let quote = "Then he tapped a sign saying \"Believe\" and walked away."

    // Multi-line string with """ | 여러 줄 문자열
    let movie = """
        A day in
        the life of an
        Apple engineer
        """

    // MARK: - 6. String functionality | 문자열 기능

    print(actor.count)                  // 17
    let nameLength = actor.count
    print(nameLength)                   // 17

    print(result.uppercased())          // ⭐️ YOU WIN! ⭐️

    print(movie.hasPrefix("A day"))     // true
    print(filename.hasSuffix(".jpg"))   // true
    print(filename.hasSuffix(".JPG"))   // false – case-sensitive | 대소문자 구분

    // MARK: - 7. Integers | 정수 (Int)

    let score = 10
    let reallyBig = 100_000_000         // _ for readability | 가독성용 _
    let stillSame = 1_00__00___00____00 // Swift ignores _ | 값은 동일: 100,000,000

    // Arithmetic operators | 산술 연산자
    let lowerScore = score - 2          // 8
    let higherScore = score + 10        // 20
    let doubledScore = score * 2        // 20
    let squaredScore = score * score    // 100
    let halvedScore = score / 2         // 5

    // Compound assignment operators | 복합 할당 연산자
    var counter = 10
    counter += 5
    print(counter)   // 15

    counter *= 2
    print(counter)   // 30
    counter -= 10
    print(counter)   // 20
    counter /= 2
    print(counter)   // 10

    // isMultiple(of:) | 배수 확인
    let number = 120
    print(number.isMultiple(of: 3))     // true
    print(120.isMultiple(of: 3))        // true

    // MARK: - 8. Decimals | 소수 (Double)

    let decimalNumber = 0.1 + 0.2
    print(decimalNumber)                // 0.30000000000000004 – floating-point error | 부동소수점 오차

    // Type safety: can't mix Int & Double | 타입 안정성
    let a = 1
    let b = 2.0
    // let c = a + b                    // ❌ Error: Int + Double
    let c1 = a + Int(b)                 // 3   (Int)
    let c2 = Double(a) + b              // 3.0 (Double)

    // Dot → Double, no dot → Int | 점이 있으면 Double
    let double1 = 3.1
    let double2 = 3131.3131
    let double3 = 3.0                   // still a Double | .0이어도 Double
    let int1 = 3                        // Int

    // A variable's type never changes | 변수의 타입은 고정
    var actorName = "Nicolas Cage"
    actorName = "John Travolta"         // ✅ String → String
    // actorName = 57                   // ❌ Error: can't assign Int to String

    // Operators work on Double too | Double에도 연산자 사용 가능
    var rating = 5.0
    rating *= 2
    print(rating)                       // 10.0
}
