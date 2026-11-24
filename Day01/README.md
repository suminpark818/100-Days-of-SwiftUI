# Day 1 – Variables, Constants, Strings, and Numbers
### 변수, 상수, 문자열, 숫자

> 📅 2026-11-24
> 🔗 [100 Days of SwiftUI – Day 1](https://www.hackingwithswift.com/100/swiftui/1)

## 📚 Contents | 목차
| # | Topic | 주제 |
|---|---|---|
| 00 | [Introduction](./00-Introduction.md) | Swift와 SwiftUI 소개, 실습 환경 |
| 01 | [Variables and Constants](./01-Variables-and-Constants.md) | 변수(`var`)와 상수(`let`) |
| 02 | [Strings](./02-Strings.md) | 문자열, 여러 줄 문자열, 문자열 기능 |
| 03 | [Integers](./03-Integers.md) | 정수(`Int`), 산술 연산자, 복합 할당 연산자 |
| 04 | [Decimals](./04-Decimals.md) | 소수(`Double`), 타입 안정성 |
| 💻 | [Day01.swift](./Day01.swift) | 플레이그라운드 실습 코드 |

## ✅ Key Takeaways | 오늘의 핵심
- `var` can change, `let` can't → **prefer `let`**
  `var`는 변경 가능, `let`은 변경 불가 → **가능하면 `let`**
- Strings: `\"` for inner quotes, `"""` for multi-line text
  문자열: 안쪽 따옴표는 `\"`, 여러 줄은 `"""`
- `.count`, `uppercased()`, `hasPrefix()`, `hasSuffix()`
- `Int` for whole numbers, `Double` for decimals (a dot means `Double`)
  정수는 `Int`, 소수는 `Double` (점이 있으면 `Double`)
- **Type safety**: no mixing `Int` & `Double`, and a variable's type never changes
  **타입 안정성**: `Int`와 `Double`은 섞을 수 없고, 변수의 타입은 바뀌지 않는다

---
[⬅️ Back to main](../README.md)
