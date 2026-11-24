# Day 1 – How to create variables and constants | 변수와 상수 만들기

> 📅 2026-11-24
> 🔗 [100 Days of SwiftUI – Day 1](https://www.hackingwithswift.com/100/swiftui/1)

## 📌 Summary | 요약
- Swift stores data in two ways: **variables (`var`)** that can change, and **constants (`let`)** that can't.
- Swift에서 데이터를 저장하는 방법은 두 가지: 값이 바뀔 수 있는 **변수(`var`)**, 바뀔 수 없는 **상수(`let`)**.
- Use `print()` to check values while learning.
- 학습 중에는 `print()`로 값을 확인할 수 있다.
- Use **camelCase** for names, and prefer `let` over `var` whenever possible.
- 이름은 **camelCase**로 짓고, 가능하면 `var`보다 `let`을 쓴다.

## 📖 Key Concepts | 핵심 개념

### 1. Variables – `var` | 변수
```swift
var greeting = "Hello, playground"
```
| Syntax | Meaning | 의미 |
|---|---|---|
| `var` | Create a new variable | 새 변수 생성 |
| `greeting` | Variable name (make it descriptive) | 변수 이름 (의미가 드러나게) |
| `=` | Assigns a value | 값 할당 (양옆 공백은 선택이지만 일반적인 스타일) |
| `"Hello, playground"` | String in double quotes | 큰따옴표로 감싼 문자열 |

- No semicolon needed at the end of a line. (Only needed to put two statements on one line.)
  줄 끝에 세미콜론이 필요 없다. (한 줄에 코드 두 개를 쓸 때만 사용)

**Changing a variable | 변수 값 변경**
```swift
var name = "Ted"
name = "Rebecca"
name = "Keeley"
```
- Don't write `var` again when changing an existing variable.
  이미 있는 변수의 값을 바꿀 때는 `var`를 다시 쓰지 않는다.
- The old value is discarded each time.
  값을 바꿀 때마다 이전 값은 버려진다.

> 💡 `import Cocoa` in a macOS playground brings in Apple's framework code — don't delete it.
> macOS 플레이그라운드의 `import Cocoa`는 애플이 제공하는 코드 모음을 불러오므로 지우지 말 것.

### 2. Constants – `let` | 상수
```swift
let character = "Daphne"
character = "Eloise"   // ❌ Error: cannot assign to value: 'character' is a 'let' constant
```
- A constant can't be changed after it's set — Swift shows an error if you try.
  상수는 한 번 정하면 바꿀 수 없고, 바꾸려 하면 Swift가 에러를 낸다.
- "let" comes from math: *"let x be equal to 5."*
  `let`은 수학 표현 "x를 5라고 하자(let x be 5)"에서 왔다.

### 3. `print()` | 값 출력하기
```swift
var playerName = "Roy"
print(playerName)   // Roy

playerName = "Dani"
print(playerName)   // Dani

playerName = "Sam"
print(playerName)   // Sam
```
- Useful for checking values while learning/debugging; users don't see it in real apps.
  학습·디버깅할 때 값 확인용. 실제 앱 사용자에게는 보이지 않는다.

> 💡 Click the blue ▶︎ icon on the left in a playground to run code up to that line.
> 플레이그라운드 왼쪽의 파란 ▶︎ 버튼을 누르면 해당 줄까지 코드가 실행된다.

### 4. Naming – camelCase | 이름 짓기 규칙
```swift
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"
```
- First word lowercase, each following word starts with a capital letter.
  첫 단어는 소문자, 이후 단어의 첫 글자는 대문자.
- Names are case-sensitive: `playerName` ≠ `playername`.
  대소문자를 구분하므로 `playerName`과 `playername`은 다른 이름이다.

### 5. Prefer `let` over `var` | 가능하면 상수를 쓰자
- Swift can optimize code better.
  Swift가 코드를 더 잘 최적화할 수 있다.
- Prevents changing a value by accident.
  실수로 값을 바꾸는 것을 막아준다.

## 🔍 Deep Dive | 보충 설명

### Why does Swift have variables? | 변수는 왜 필요할까?
- Every app takes data → transforms it → shows it to the user.
  모든 앱은 데이터를 받아서 → 가공하고 → 사용자에게 보여준다.
- Variables hold that data in memory (user input, downloaded data, etc.).
  변수는 그 데이터(사용자 입력, 다운로드한 데이터 등)를 메모리에 잠시 보관한다.
- Read `var` as **"create a new variable"**.
  `var`는 **"새 변수를 만든다"**라고 읽으면 이해하기 쉽다.

```swift
var favoriteShow = "Orange is the New Black"  // create a new variable
favoriteShow = "The Good Place"               // modify existing value
favoriteShow = "Doctor Who"                   // modify existing value
```

- Writing `var favoriteShow` again is an **error** → Swift makes you be clear:
  `var favoriteShow`를 다시 쓰면 **에러** → Swift는 의도를 명확히 하도록 요구한다.
  - Modifying? → remove `var` | 값을 바꾸려면 `var`를 빼고
  - Creating new? → use a different name | 새로 만들려면 다른 이름을 쓴다

### Why constants as well as variables? | 상수는 왜 따로 있을까?
- Constants are identical to variables, except their value **can't change** once set.
  상수는 변수와 똑같지만, 한 번 정한 값을 **바꿀 수 없다**는 점만 다르다.
- If you create a `var` and never change it, Swift (Xcode) will suggest using `let`.
  `var`로 만들고 값을 한 번도 안 바꾸면 Xcode가 `let`으로 바꾸라고 경고해 준다.
- A constant is like a **contract with Swift**: "this value matters, never let me change it."
  상수는 Swift와의 **약속**과 같다: "이 값은 중요하니 절대 바꾸지 못하게 해줘."
- One typo could change a variable by accident — with `let`, Swift protects you.
  변수는 실수 한 번으로 값이 바뀔 수 있지만, `let`을 쓰면 Swift가 막아준다.

## 💡 What I Learned | 배운 점
- `var` = changeable, `let` = fixed. Default to `let`, switch to `var` only when needed.
- 기본은 `let`, 값이 바뀌어야 할 때만 `var`.

## ❓ Questions / Notes | 궁금한 점 & 메모
- 
