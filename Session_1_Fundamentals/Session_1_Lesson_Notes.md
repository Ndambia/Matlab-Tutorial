# Session 1 Lesson Notes
## MATLAB Fundamentals and Basic Engineering Computation
**Duration:** 3 hours

## Learning Objectives
By the end of this session, students should be able to:
- identify the main parts of the MATLAB interface
- create variables and arrays
- perform engineering calculations
- write scripts
- produce simple 2D plots

## Part 1: MATLAB Environment
Explain:
- Command Window
- Workspace
- Current Folder
- Editor
- Figure window

### Good teaching point
MATLAB is matrix-oriented. Even a single value is treated in a mathematically consistent way.

## Part 2: Variables and Basic Operations
Show:
- assignment using `=`
- variable naming rules
- arithmetic operators
- use of semicolon to suppress output
- comments using `%`

Example:
```matlab
V = 12;
R = 4;
I = V / R;
```

Relate to Ohm’s law:
- Voltage = current × resistance
- Current = voltage / resistance
- Power = voltage × current

## Part 3: Vectors and Matrices
Explain:
- row vector
- column vector
- matrix
- indexing
- element-by-element operations `.*`, `./`, `.^`

Important distinction:
- `*` is matrix multiplication
- `.*` is element-wise multiplication

## Part 4: Plotting
Show how to:
- define time vector
- generate a sine wave
- add labels, title, legend, and grid

## Part 5: Scripts
Explain difference between:
- typing commands directly in Command Window
- writing reusable code in a script file

## In-Class Questions
1. Why do we use `.*` instead of `*` in signal calculations?
2. What happens if the time vector has a very small step size?
3. Why do engineers rely on plots?

## Practical Exercise Ideas
- Calculate current for 5 resistor values
- Plot current versus resistance
- Generate and plot two sinusoids with different frequencies
- Compute power for a list of voltages and currents

## Wrap-Up
Students should leave with confidence that MATLAB is not only for programming but also for:
- calculations
- plotting
- simulation preparation
- engineering analysis
