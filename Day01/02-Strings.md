# Day 1 – How to create strings | 문자열 만들기

> 📅 2026-11-24
> 🔗 [100 Days of SwiftUI – Day 1](https://www.hackingwithswift.com/100/swiftui/1)

## 📌 Summary | 요약
- A **string** is text assigned to a constant or variable, written in double quotes.
- **문자열(String)**은 큰따옴표로 감싼 텍스트를 상수나 변수에 저장한 것이다.
- Use `\"` for quotes inside a string, and `"""` for multi-line strings.
- 문자열 안의 따옴표는 `\"`, 여러 줄 문자열은 `"""`를 쓴다.
- Useful tools: `.count`, `uppercased()`, `hasPrefix()`, `hasSuffix()`.
- 유용한 기능: `.count`, `uppercased()`, `hasPrefix()`, `hasSuffix()`.

## 📖 Key Concepts | 핵심 개념

### 1. Creating strings | 문자열 만들기
```swift
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"      // emoji & punctuation OK
```
- Think of Scrabble tiles threaded onto a string to make a word.
  스크래블 글자 타일을 실(string)에 꿰어 단어를 만든 모습을 떠올리면 된다.
- Text, punctuation, emoji — anything can go inside the quotes.
  글자, 문장부호, 이모지 등 무엇이든 넣을 수 있다.

### 2. Quotes inside a string | 문자열 안에 따옴표 넣기
```swift
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
```
- Put a backslash `\` before inner double quotes.
  안쪽 큰따옴표 앞에 백슬래시 `\`를 붙인다.
- Without it, Swift thinks the string ended → error.
  안 붙이면 문자열이 끝난 걸로 인식해서 에러가 난다.

### 3. Multi-line strings | 여러 줄 문자열
```swift
// ❌ Not allowed – line breaks in a normal string
let movie = "A day in
the life of an
Apple engineer"

// ✅ Use triple quotes
let movie = """
A day in
the life of an
Apple engineer
"""
```
- Opening and closing `"""` must be on their own lines.
  시작과 끝의 `"""`는 각각 따로 한 줄에 써야 한다.
- No realistic length limit for strings.
  문자열 길이에는 사실상 제한이 없다.

### 4. Useful string functionality | 유용한 문자열 기능
| Code | Description | 설명 | Example result |
|---|---|---|---|
| `actor.count` | Length of the string | 글자 수 (공백 포함) | `17` |
| `result.uppercased()` | All letters uppercased | 모두 대문자로 변환 | `"⭐️ YOU WIN! ⭐️"` |
| `movie.hasPrefix("A day")` | Starts with given text? | 특정 텍스트로 시작하는지 | `true` |
| `filename.hasSuffix(".jpg")` | Ends with given text? | 특정 텍스트로 끝나는지 | `true` |

```swift
print(actor.count)                   // 17

let nameLength = actor.count         // can store it in a constant
print(nameLength)                    // 17

print(result.uppercased())           // ⭐️ YOU WIN! ⭐️
print(movie.hasPrefix("A day"))      // true
print(filename.hasSuffix(".jpg"))    // true
print(filename.hasSuffix(".JPG"))    // false – case-sensitive!
```

### 5. Parentheses `()` or not? | 괄호를 붙일까 말까?
- **Reading data** → no parentheses: `count`
  **데이터를 읽을 때** → 괄호 없음: `count`
- **Doing work** → parentheses: `uppercased()`
  **작업을 시킬 때** → 괄호 있음: `uppercased()`
- (A simplified rule for now — more details later.)
  (지금 단계용 간단한 규칙이고, 나중에 더 자세히 배운다.)

> ⚠️ Strings are **case-sensitive**: `".jpg"` ≠ `".JPG"`
> 문자열은 **대소문자를 구분**한다.

## 🔍 Deep Dive | 보충 설명

### Why does Swift need multi-line strings? | 여러 줄 문자열은 왜 필요할까?
- Standard strings must **never contain line breaks**.
  일반 문자열에는 **줄바꿈을 넣을 수 없다**.

```swift
var quote = "Change the world by being yourself"   // standard string
```

- Fine for short text, but long text in one line gets ugly and hard to read in code.
  짧은 글엔 괜찮지만, 긴 글을 한 줄에 쓰면 코드가 지저분하고 읽기 어려워진다.
- Triple quotes `"""` let you write text across many lines, keeping it readable.
  `"""`를 쓰면 여러 줄에 걸쳐 쓸 수 있어 코드에서도 읽기 편하다.

```swift
var burns = """
The best laid schemes
O’ mice and men
Gang aft agley
"""
```

- The line breaks are **part of the text** → this string actually contains 3 lines.
  줄바꿈도 **문자열의 일부**로 저장된다 → 이 문자열은 실제로 3줄짜리 텍스트다.

> 💡 **Tip**: Sometimes you'll want long text on a single line instead — e.g. error messages.
> If someone searches your code for an error message they saw, splitting it across lines can make the search fail.
> 가끔은 긴 문자열이라도 한 줄로 두는 게 나을 때가 있다 — 특히 에러 메시지.
> 다른 사람이 화면에서 본 에러 문구로 코드를 검색할 때, 여러 줄로 나뉘어 있으면 검색이 안 될 수 있다.

## 💡 What I Learned | 배운 점
- `\"` for quotes inside strings, `"""` for multi-line text.
- `count`는 속성이라 괄호 없이, `uppercased()`·`hasPrefix()`·`hasSuffix()`는 동작이라 괄호와 함께 쓴다.

## ❓ Questions / Notes | 궁금한 점 & 메모
- 
