# Day 1 – How to store decimal numbers | 소수 저장하기

> 📅 2026-11-24
> 🔗 [100 Days of SwiftUI – Day 1](https://www.hackingwithswift.com/100/swiftui/1)

## 📌 Summary | 요약
- Decimal numbers are **floating-point numbers**, and Swift uses **`Double`** by default.
- 소수는 **부동소수점 수**이며, Swift는 기본적으로 **`Double`** 타입으로 만든다.
- Floating-point math isn't perfectly accurate: `0.1 + 0.2` ≠ `0.3`.
- 부동소수점 계산은 완벽히 정확하지 않다: `0.1 + 0.2`는 정확히 `0.3`이 아니다.
- **Type safety**: you can't mix `Int` and `Double` without converting explicitly.
- **타입 안정성**: `Int`와 `Double`은 명시적으로 변환하지 않으면 섞어 쓸 수 없다.
- Once a variable has a type, it **always keeps that type**.
- 변수의 타입은 한 번 정해지면 **절대 바뀌지 않는다**.

## 📖 Key Concepts | 핵심 개념

### 1. Floating-point numbers | 부동소수점 수
- The computer stores huge numbers (123,456,789) and tiny numbers (0.0000000001) in the same space by **moving ("floating") the decimal point**.
  컴퓨터는 아주 큰 수와 아주 작은 수를 같은 크기의 공간에 저장하기 위해 **소수점 위치를 옮겨가며(floating)** 저장한다.

```swift
let number = 0.1 + 0.2
print(number)   // 0.30000000000000004 😱
```

- **Why?** Computers use binary, and some numbers (like 1/3) can't be stored exactly → stored as very close approximations.
  **이유**: 컴퓨터는 2진수를 쓰는데, 1/3 같은 수는 2진수로 정확히 표현할 수 없어서 아주 가까운 근삿값으로 저장한다.
- Very efficient, and the error is usually too small to matter.
  매우 효율적이고, 오차도 대부분 무시할 만큼 작다.

### 2. `Double`
- Short for **"double-precision floating-point number"**.
  **"배정밀도 부동소수점 수"**의 줄임말.
- Uses twice the storage of older types → can store massive numbers.
  예전 방식보다 2배의 저장 공간을 써서 아주 큰 수도 저장할 수 있다.

### 3. `Int` or `Double`? – decided by the dot | 점(.)이 있으면 Double
```swift
let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0      // still a Double, even with .0
let int1 = 3           // Int
```
- Has a decimal point → `Double`, no decimal point → `Int`.
  소수점이 있으면 `Double`, 없으면 `Int`. (`.0`이어도 `Double`!)

### 4. Type safety – no mixing `Int` & `Double` | 타입 안정성
```swift
let a = 1
let b = 2.0
let c = a + b            // ❌ Error: can't add Int and Double

let c = a + Int(b)       // ✅ treat b as Int    → 3 (Int)
let c = Double(a) + b    // ✅ treat a as Double → 3.0 (Double)
```
- Integers are 100% accurate, decimals are not → Swift won't mix them by accident.
  정수는 100% 정확하지만 소수는 아니기 때문에, Swift는 실수로 섞는 걸 막는다.
- Convert explicitly with `Int()` or `Double()`.
  `Int()` 또는 `Double()`로 명시적으로 변환해야 한다.

### 5. A variable's type never changes | 변수의 타입은 고정
```swift
var name = "Nicolas Cage"
name = "John Travolta"   // ✅ String → String

name = 57                // ❌ Error: can't put an Int into a String variable
```
- The **value** of a `var` can change, but its **type** can't.
  `var`의 **값**은 바꿀 수 있지만 **타입**은 바꿀 수 없다.

### 6. Operators work on decimals too | 소수에도 연산자 사용 가능
```swift
var rating = 5.0
rating *= 2      // 10.0
```
- Same arithmetic and compound assignment operators as integers.
  정수와 같은 산술 연산자, 복합 할당 연산자를 쓸 수 있다.

### 7. `CGFloat`
- An older way of storing decimals used by many older APIs.
  예전 API에서 쓰던 또 다른 소수 타입.
- Swift lets you use `Double` wherever `CGFloat` is expected → you can mostly ignore it.
  `CGFloat` 자리에 `Double`을 그대로 쓸 수 있으니 크게 신경 쓰지 않아도 된다.

## 🔍 Deep Dive | 보충 설명

### Why does Swift have so many numeric types? | 숫자 타입은 왜 여러 개일까?
```swift
var myInt = 1        // Int
var myDouble = 1.0   // Double
var total = myInt + myDouble   // ❌ Error
```
- Both hold "1", so why not allow adding them?
  둘 다 1인데 왜 더할 수 없을까?
- Because `myDouble` is a variable — it could later become `1.1` or `3.5`. Adding it to an `Int` could **lose the decimal part** (0.1, 0.5…).
  `myDouble`은 변수라서 나중에 `1.1`이나 `3.5`가 될 수 있고, `Int`와 섞으면 **소수 부분이 사라질 위험**이 있다.
- Swift can't guarantee it's safe → so it's not allowed. Annoying at first, but helpful!
  안전하다고 보장할 수 없으니 아예 허용하지 않는다. 처음엔 귀찮아도 결국 도움이 된다!

### Why is Swift a type-safe language? | Swift는 왜 타입 안정성을 중시할까?
```swift
var meaningOfLife = 42          // Swift infers: Int
meaningOfLife = "Forty two"     // ❌ Error: can't assign String to Int
```
- Swift figures out the type from the first value (**type inference**), and the variable keeps that type forever.
  Swift는 처음 넣은 값을 보고 타입을 추론하고(**타입 추론**), 그 변수는 계속 그 타입을 유지한다.
- As programs grow, it's impossible to remember every variable's type → **Swift does that work for us**.
  프로그램이 커지면 모든 변수의 타입을 기억할 수 없다 → **그 일을 Swift가 대신 해준다**.

## 💡 What I Learned | 배운 점
- 점이 있으면 `Double`, 없으면 `Int` — `3.0`도 `Double`이다.
- `Int`와 `Double`을 섞으려면 `Int()`나 `Double()`로 직접 변환해야 한다.
- 변수는 값은 바뀌어도 타입은 바뀌지 않는다 → 이게 Swift의 타입 안정성.

## ❓ Questions / Notes | 궁금한 점 & 메모
- 
