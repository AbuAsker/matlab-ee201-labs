# EE201 MATLAB Labs

My lab assignments for **EE201 - Structured Computer Programming** at King Abdulaziz University (KAU), Fall 2024, solved in MATLAB.

## Contents

| Lab | Topic | Key concepts | Folder |
|-----|-------|--------------|--------|
| 01 | Math and physics problems | `input`, `sqrt`, `log10`, `fprintf` | [lab01-basics](./lab01-basics) |
| 03 | Vectors and matrices | `linspace`, indexing, `sort`, `.*`, `ones`, `eye` | [lab03-vectors-matrices](./lab03-vectors-matrices) |
| 04 | Linear systems and matrix applications | `A\B`, `sum`, `max`, `sort`, matrix products | [lab04-linear-systems](./lab04-linear-systems) |
| 05 | User-defined functions and conditionals | `function`, `if/elseif`, `input`, `fprintf` | [lab05-functions-if](./lab05-functions-if) |
| 06 | Plotting | `subplot`, `semilogy`, `loglog`, parametric curves | [lab06-plotting](./lab06-plotting) |
| 07 | Switch statements and menus | `switch/case`, `menu`, functions | [lab07-switch](./lab07-switch) |
| Extra | Nested for loops | matrix generation, Pascal's triangle, patterns | [extra-nested-loops](./extra-nested-loops) |
| Extra | While loops | `while`, `break`, `continue`, Newton's method | [extra-while-loops](./extra-while-loops) |

## Repository structure

```
matlab-ee201-labs/
├── lab01-basics/
├── lab03-vectors-matrices/
├── lab04-linear-systems/
├── lab05-functions-if/
├── lab06-plotting/
├── lab07-switch/
├── extra-nested-loops/
└── extra-while-loops/
```

Functions are saved in separate files named exactly like the function (for example `KSAU.m`), because MATLAB finds functions by file name.

## How to run

1. Open MATLAB and set the lab folder as the **Current Folder**.
2. Run the main script of the lab (for example `lab05_main.m`).
3. Scripts that use `input` will ask for values in the Command Window.

---

## Lab 01 - Basics

| Problem | Idea | Check |
|---------|------|-------|
| Cone | Slant height from Pythagoras, then surface area and volume | r=5, h=10 gives SA = 254.1602, V = 261.80 |
| Spring | Convert cm to m, then PE = 0.5 k s^2 with k = 358 N/m | s=45 cm gives 36.2475 J |
| Earthquake | Solve E = 10^4.4 x 10^(1.5M) for M using `log10` | E=26000 gives M = 0.0100 |

## Lab 03 - Vectors and Matrices

- Vectors: `linspace`, odd-index updates with `1:2:end`, ranges, `length`.
- Matrices: row/column extraction, transpose, deleting rows/columns, sub-matrices with `end`.
- Column/row operations: `max`, `min`, `sort` (descending and ascending), `sum`.
- Element-by-element math with `.*`, `./`, `.^`.
- Building `[-3 7 7 7; ...]` using `7*ones(4) - 10*eye(4)`.

## Lab 04 - Linear Systems and Matrix Applications

- Solving `AX = B` with the backslash operator: `X = A\B` gives x = 0.2308, y = -0.6923, z = 0.9231.
- Average, max and min over a temperature table (6 months x 3 cities).
- Engineer workload table: weekly salary = hourly cost x hours (985, 990, 1008 SR, total 2983 SR).
- Stocks problem: investment, profit and total wealth per owner, ranked with `sort`.

## Lab 05 - Functions and Conditionals

| Problem | Function | What it does |
|---------|----------|--------------|
| Belt friction | `Coe_Calc(F1,F2,B)` | mu = log(F1/F2) / B, with B in **radians** |
| Temperature | `FtoC`, `CtoK` | Fahrenheit to Celsius to Kelvin |
| Sales reward | `calculateReward(res, bus)` | Tiered rates with `if/elseif`, capped at 2000 SR |
| Admission | `KSAU(hs, qudrat, tahsili)` | Weighted averages for KAU and KFUPM |
| GPA | `KAU_GPA(score)` | Score to letter grade and GPA points |

Reward test cases: (15,25) = 250 SR, (10,50) = 550 SR, (80,50) = 1140 SR, (100,100) = 2000 SR.

## Lab 06 - Plotting

- Projectile height and speed vs. time using `subplot`, with different colors and line styles.
- Linear, semilog (`semilogy`) and log-log (`loglog`) plots of exponential and power functions.
- The Butterfly Curve from parametric equations, with `axis equal`.

## Lab 07 - Switch and Menus

- `calculate_force(choice, W)`: F = mu x W for different material pairs.
- Same problem using `menu()` for a clickable selection window.
- `shippingCost(W, distance, type)`: `switch` on cargo type, tiered rates by weight, and a different formula above 1000 miles.

## Extra - Nested For Loops

Multiplication table, triangular number patterns, Pascal's triangle matrix of size n, alternating-row matrix, distance-from-diagonal (Toeplitz) matrix, checkerboard matrix, and a custom matrix where each cell is the sum of the top and left neighbors (or their max when the sum reaches 20).

## Extra - While Loops

Counters, filling a water tank, summing until a threshold, `break` and `continue`, reading input until a negative number, Newton's method for sqrt(2), and a population growth problem (50,000 growing 3% per year passes 100,000 after 24 years).

---

## Review notes: mistakes I found and fixed

| Lab | Mistake | Fix |
|-----|---------|-----|
| 03 | Even numbers written as `21:2:35` (odd) | `22:2:34` |
| 03 | Replaced a row when the question asked for a column | `M(:,4) = T(2,:)'` |
| 03 | Deleted a row instead of a column | `T(:,4) = []` |
| 03 | Used `min` where `max` was asked | `max(M)` |
| 03 | `-1.^(n+1)` is parsed as `-(1.^(n+1))` | `(-1).^(n+1)` |
| 04 | Solved the system with `A / B'` | `A \ B` |
| 04 | "Minimum over all three cities combined" returned one value per city | `min(M(1:2:end,:), [], 'all')` |
| 05 | Passed 130 (degrees) where radians are needed | `deg2rad(130)` |
| 06 | Plotted `2^x` where the question asked for `e^(x^2)` | `exp(x.^2)` |
| 06 | Plots drawn into the same figure | `figure` before each group of plots |
| Loops | Inner loop `j=1:5` printed a full square instead of a triangle | `j=1:i` |
| Loops | Missing `;` printed the matrix on every iteration | Added `;` |

## What I learned

- Vectors and matrices are the core data structure in MATLAB, and `*` is not `.*`.
- Check units: angles in radians, centimeters to meters.
- A function lives in its own file, and its name must match the file name.
- Reading the question carefully matters: row vs. column, max vs. min.
- Missing semicolons flood the output, so I use them on purpose.

## License

MIT
