# 🚀 Crypto Portfolio Profit/Loss Analyzer

A simple Python project that generates a **random cryptocurrency portfolio**, fetches **live market prices** from the CoinGecko REST API, and analyzes the portfolio by calculating investment value, current value, and profit/loss for each cryptocurrency.

---

## 📌 Features

- 📊 Generates a random cryptocurrency portfolio
- 🌐 Fetches live cryptocurrency prices using the CoinGecko REST API
- 💰 Calculates:
  - Investment Amount
  - Current Portfolio Value
  - Profit/Loss per Coin
- 📈 Displays total portfolio investment and profit/loss
- 🔄 Uses backup prices if the API is unavailable
- 🧱 Built using Object-Oriented Programming (OOP)

---

## 🛠 Technologies Used

- Python 3.8+
- Requests
- Random
- CoinGecko REST API

---

## 📦 Requirements

| Requirement | Details |
|-------------|---------|
| Python Version | 3.8+ |
| External Package | `requests` |
| Standard Library | `random` |
| Internet | Required for live price fetching |
| API Key | Not Required |

Install dependencies:

```bash
pip install requests
```

Run the project:

```bash
python crypto_portfolio.py
```

---

# 📂 Project Structure

```text
crypto_portfolio.py
README.md
requirements.txt
```

---

# ⚙️ How It Works

### Step 1 – Generate Portfolio

The script randomly creates holdings for:

- Bitcoin (BTC)
- Ethereum (ETH)
- Solana (SOL)
- Cardano (ADA)

Each holding contains:

- Symbol
- Quantity
- Buy Price

---

### Step 2 – Fetch Live Prices

The program calls the CoinGecko API:

```
https://api.coingecko.com/api/v3/simple/price
```

Example response:

```json
{
  "bitcoin": {
    "usd": 118500
  },
  "ethereum": {
    "usd": 3500
  }
}
```

If the API request fails, the application automatically switches to backup prices.

---

### Step 3 – Analyze Portfolio

For every cryptocurrency, the script calculates:

- Investment

```
Quantity × Buy Price
```

- Current Value

```
Quantity × Current Market Price
```

- Profit/Loss

```
Current Value − Investment
```

Finally, it prints:

- Total Investment
- Current Portfolio Value
- Net Profit/Loss
- Portfolio Status (Profit/Loss/Break Even)

---

# 📊 Sample Output

```text
======================================================================
            CRYPTO PORTFOLIO ANALYSIS
======================================================================

Coin           : BTC
Quantity       : 0.84

Buy Price      : $48,210.00
Current Price  : $118,450.00

Investment     : $40,496.40
Current Value  : $99,498.00

Profit/Loss    : $59,001.60

---------------------------------------------------------------------

SUMMARY

======================================================================

Total Investment : $55,800.00

Current Value    : $118,920.00

Net Profit/Loss  : $63,120.00

Portfolio Status : PROFIT 📈
```

---

# 🏗 OOP Design

## Holding Class

Represents a cryptocurrency holding.

### Attributes

- Symbol
- Quantity
- Buy Price

### Method

- `investment()`

Calculates the total invested amount.

---

## Portfolio Class

Stores all holdings.

### Methods

- `add_holding()`
- `analyze()`

Responsible for generating the complete portfolio report.

---

# 📚 Day 3 Topics Covered

| Topic | Status | Description |
|--------|--------|-------------|
| Classes & Objects | ✅ | `Holding` and `Portfolio` classes |
| Constructors | ✅ | `__init__()` initializes objects |
| Inheritance | ❌ | Not implemented |
| Polymorphism | ❌ | Not implemented |
| Encapsulation | ❌ | Public attributes used |
| Abstraction | ❌ | No abstract base class |
| Iterators | ⚪ | Uses Python's built-in list iterator |
| Generators | ❌ | Not implemented |
| Decorators | ❌ | Not implemented |
| Context Managers | ❌ | Not implemented |
| Logging | ❌ | Uses `print()` for output |
| JSON Handling | ⚪ | Parses API JSON response |
| REST API (`requests`) | ✅ | Fetches live cryptocurrency prices |

---

# 🔄 Project Workflow

```text
Start
   │
   ▼
Generate Random Portfolio
   │
   ▼
Fetch Live Prices
   │
   ├── Success → Use Live Prices
   │
   └── Failure → Use Backup Prices
   │
   ▼
Analyze Portfolio
   │
   ▼
Calculate Investment
Current Value
Profit/Loss
   │
   ▼
Display Portfolio Summary
   │
   ▼
End
```

---

# 🚀 Future Improvements

The project can be extended by implementing additional advanced Python concepts:

- Inheritance
- Polymorphism
- Encapsulation using `@property`
- Abstract Base Classes (ABC)
- Custom Iterators
- Generators
- Decorators
- Context Managers
- Logging Module
- JSON Save/Load
- Portfolio Persistence

---

# 🎯 Learning Outcomes

Through this project, I learned:

- Object-Oriented Programming
- Designing reusable Python classes
- Working with REST APIs using the `requests` library
- Parsing JSON responses
- Handling API failures gracefully
- Building a real-world portfolio analysis application

---

## 👨‍💻 Author

**Paul Mathew**

Day 3 Mini Project – Advanced Python