# Full MATLAB Training Package for Engineering Attachment

This package is a **full, teachable 3-session MATLAB training kit** for engineering attachment students.

Each session is designed for **3 hours** and includes:
- detailed lesson notes
- well-commented MATLAB scripts
- practical exercises
- worked solutions
- mini engineering case studies
- a sample dataset for data analysis

## Structure

```text
matlab_full_training_package/
│
├── README.md
├── Instructor_Guide.md
├── Data/
│   └── sample_sensor_data.csv
│
├── Session_1_Fundamentals/
│   ├── Session_1_Lesson_Notes.md
│   ├── s1_01_environment_and_basics.m
│   ├── s1_02_vectors_matrices.m
│   ├── s1_03_plotting_signals.m
│   ├── s1_04_user_input_and_scripts.m
│   ├── s1_05_guided_exercises.m
│   └── s1_06_exercise_solutions.m
│
├── Session_2_Programming_and_Data_Analysis/
│   ├── Session_2_Lesson_Notes.md
│   ├── s2_01_conditionals.m
│   ├── s2_02_loops.m
│   ├── s2_03_generate_dataset.m
│   ├── s2_04_import_and_analyze_data.m
│   ├── s2_05_engineering_case_study.m
│   ├── s2_06_guided_exercises.m
│   └── s2_07_exercise_solutions.m
│
└── Session_3_Functions_Modeling_and_Mini_Project/
    ├── Session_3_Lesson_Notes.md
    ├── rc_response.m
    ├── moving_average_filter.m
    ├── rms_value.m
    ├── s3_01_functions_basics.m
    ├── s3_02_equation_solving.m
    ├── s3_03_rc_circuit_modeling.m
    ├── s3_04_signal_analysis_mini_project.m
    ├── s3_05_guided_exercises.m
    └── s3_06_exercise_solutions.m
```

## Recommended Delivery Order

### Session 1
1. `s1_01_environment_and_basics.m`
2. `s1_02_vectors_matrices.m`
3. `s1_03_plotting_signals.m`
4. `s1_04_user_input_and_scripts.m`
5. `s1_05_guided_exercises.m`
6. Discuss using `s1_06_exercise_solutions.m`

### Session 2
1. `s2_01_conditionals.m`
2. `s2_02_loops.m`
3. `s2_03_generate_dataset.m`
4. `s2_04_import_and_analyze_data.m`
5. `s2_05_engineering_case_study.m`
6. `s2_06_guided_exercises.m`
7. Review `s2_07_exercise_solutions.m`

### Session 3
1. `s3_01_functions_basics.m`
2. `s3_02_equation_solving.m`
3. `s3_03_rc_circuit_modeling.m`
4. `s3_04_signal_analysis_mini_project.m`
5. `s3_05_guided_exercises.m`
6. Review `s3_06_exercise_solutions.m`

## Notes
- The scripts are written to work in **base MATLAB** as much as possible.
- A few sections mention optional extensions if specific toolboxes are available, but the core package does **not depend** on them.
- The sample dataset is already included under `Data/`.

## Teaching Goal
By the end of the 3 sessions, trainees should be able to:
- navigate MATLAB confidently
- write scripts and basic programs
- use vectors, matrices, loops, and conditionals
- import and analyze engineering data
- create user-defined functions
- model and solve simple engineering problems
- complete a mini signal-analysis project

## First Step in MATLAB
1. Open the package root folder in MATLAB.
2. Run `setup_paths.m` once.
3. Then open the relevant session folder and run the scripts in teaching order.
