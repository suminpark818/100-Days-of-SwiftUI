# Day 1 – How to store whole numbers | 정수 저장하기

> 📅 2026-11-24
> 🔗 [100 Days of SwiftUI – Day 1](https://www.hackingwithswift.com/100/swiftui/1)

## 📌 Summary | 요약
- Whole numbers in Swift are called **integers (`Int`)**.
- Swift에서 정수(소수점 없는 수)는 **`Int`** 타입이다.
- Use `_` to make big numbers readable, e.g. `100_000_000`.
- 큰 숫자는 `_`로 끊어 써서 읽기 쉽게 만들 수 있다.
- Arithmetic: `+` `-` `*` `/`, and shorthand: `+=` `-=` `*=` `/=`.
- 사칙연산 `+` `-` `*` `/`와 복합 할당 연산자 `+=` `-=` `*=` `/=`를 쓴다.
- `isMultiple(of:)` checks if a number is a multiple of another.
- `isMultiple(of:)`로 배수인지 확인할 수 있다.

## 📖 Key Concepts | 핵심 개념

### 1. Creating integers | 정수 만들기
```swift
let score = 10
```
- Same as strings: `let`/`var` + name + value.
  문자열과 똑같이 `let`/`var` + 이름 + 값으로 만든다.
- "Integer" comes from Latin, meaning "whole".
  "integer"는 "완전한, 전체의"라는 뜻의 라틴어에서 왔다.
- Can hold very large numbers (up to quintillions) and negative numbers too.
  아주 큰 수(수백경 단위)부터 음수까지 저장할 수 있다.

### 2. Underscores in numbers | 숫자에 `_` 넣기
```swift
let reallyBig = 100000000            // hard to read 😵
let reallyBig = 100_000_000          // ✅ 100 million – easy to read
let reallyBig = 1_00__00___00____00  // also valid, same value
```
- Works like commas in "100,000,000" — Swift ignores the underscores.
  손으로 쓸 때의 쉼표(,)처럼 쓰며, Swift는 `_`를 무시한다.

### 3. Arithmetic operators | 산술 연산자
| Operator | Meaning | 의미 |
|---|---|---|
| `+` | Addition | 덧셈 |
| `-` | Subtraction | 뺄셈 |
| `*` | Multiplication | 곱셈 |
| `/` | Division | 나눗셈 |

```swift
let lowerScore = score - 2       // 8
let higherScore = score + 10     // 20
let doubledScore = score * 2     // 20
let squaredScore = score * score // 100
let halvedScore = score / 2      // 5
```

### 4. Compound assignment operators | 복합 할당 연산자
- Modify a variable and assign the result back to it — less typing.
  변수의 값을 계산해서 다시 그 변수에 저장하는 축약 표현.

```swift
var counter = 10
counter = counter + 5   // long way
counter += 5            // ✅ shorthand, same result

counter *= 2
counter -= 10
counter /= 2
```

| Shorthand | Same as | 의미 |
|---|---|---|
| `a += b` | `a = a + b` | 더해서 저장 |
| `a -= b` | `a = a - b` | 빼서 저장 |
| `a *= b` | `a = a * b` | 곱해서 저장 |
| `a /= b` | `a = a / b` | 나눠서 저장 |

> ⚠️ Only works with `var` — constants (`let`) can't change.
> `var`에서만 쓸 수 있다. `let` 상수는 값을 바꿀 수 없으니까!

### 5. `isMultiple(of:)` | 배수 확인하기
```swift
let number = 120
print(number.isMultiple(of: 3))   // true

print(120.isMultiple(of: 3))      // can call it on a number directly
```
- Returns `true` or `false`.
  결과는 `true` 또는 `false`.
- Like strings, integers have built-in functionality too.
  문자열처럼 정수에도 기본 제공 기능이 있다.

## 💡 What I Learned | 배운 점
- `Int` = whole numbers, and `_` makes big numbers readable.
- `counter += 5`처럼 복합 할당 연산자를 쓰면 코드가 짧고 깔끔해진다.

## ❓ Questions / Notes | 궁금한 점 & 메모
- `Int`끼리 나누면 소수점은 버려진다? (`score / 2`는 정수 결과) → 다음 강의(Decimal numbers)에서 확인
