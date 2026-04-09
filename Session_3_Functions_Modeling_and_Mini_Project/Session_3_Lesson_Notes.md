# Session 3 Lesson Notes
## Functions, Modeling, and Mini Project
**Duration:** 3 hours

## Learning Objectives
By the end of this session, students should be able to:
- write their own MATLAB functions
- solve equations numerically
- model a first-order engineering system
- process a noisy signal
- explain engineering meaning from results

## Part 1: Functions
Explain why functions are important:
- code reuse
- cleaner scripts
- easier debugging
- modular design

Show:
- input arguments
- output arguments
- help comments
- saving function files

## Part 2: Equation Solving
Teach numerical methods using:
- `fzero`
- simple parameter sweeps
- checking a solution graphically

Possible engineering examples:
- diode or nonlinear equation
- settling point
- threshold crossing

## Part 3: RC Circuit Modeling
Use the charging equation:
```matlab
Vc(t) = Vin * (1 - exp(-t/(R*C)))
```

Discuss:
- time constant `tau = R*C`
- effect of larger resistance
- effect of larger capacitance
- transient response

## Part 4: Mini Project
Signal analysis workflow:
1. create signal
2. add noise
3. visualize time-domain signal
4. smooth/filter
5. compare before and after
6. interpret engineering meaning

## In-Class Questions
1. Why are functions better than repeated code?
2. What is a time constant physically?
3. Why does filtering improve interpretation?
4. What information is lost if filtering is too aggressive?

## Wrap-Up
Students should now be ready to start using MATLAB independently for:
- engineering assignments
- data analysis
- simple modeling
- prototype simulations
