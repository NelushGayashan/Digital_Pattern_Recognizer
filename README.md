# Digital Pattern Recognizer

## Overview

The Digital Pattern Recognizer (DPR) project is designed to demonstrate a digital pattern recognition system using VHDL. This project showcases various VHDL components integrated into a pattern recognition system that identifies specific patterns in a digital signal. The primary components include a one-bit magnitude comparator, a non-overlapping Moore counter, and a control unit that integrates these components into a functional digital pattern recognizer.

## Components

### 1. ONE_BIT_MAGNITUDE_COMPARATOR.vhd

This VHDL code defines a one-bit magnitude comparator. It compares two single-bit inputs, `A` and `B`, and produces three outputs:
- `C`: Indicates if `A` is greater than `B`.
- `D`: Indicates if `A` is less than `B`.
- `E`: Indicates if `A` is equal to `B`.

The comparator uses basic conditional logic to determine the relationships between `A` and `B`.

### 2. Non_Overlapping_Moore_111.vhd

This code implements a non-overlapping Moore counter that detects a specific sequence of bits (`111`). It consists of:
- A synchronous process that updates the state based on the clock and reset signals.
- A state transition process that defines how the counter moves between states (`st0`, `st1`, `st2`, and `st3`) based on the input bit `din`.
- An output process that produces a `dout` signal when the sequence `111` is detected.

### 3. end_p.vhd

The `end_p` component handles the final output of the pattern recognizer system. It takes two inputs:
- `A`: A bit from the pattern recognition system.
- `dout`: The output from the non-overlapping Moore counter.

It produces a single output, `S`, that reflects the value of `A` when `dout` is `1`. Otherwise, it retains its previous value.

### 4. DPR.vhd

The `DPR` entity integrates the above components into a complete pattern recognition system. It includes:
- `ONE_BIT_MAGNITUDE_COMPARATOR` to compare the input bits.
- `Non_Overlapping_Moore_111` to detect the specific bit sequence.
- `end_p` to finalize the output based on the detected pattern.

The `DPR` module maps the components and connects them to create a cohesive pattern recognition system.

### 5. tb_DPR.vhd

The testbench `tb_DPR` is designed to simulate and verify the functionality of the `DPR` system. It includes:
- Instantiation of the `DPR` component.
- Clock generation process to drive the simulation.
- Stimulus process that applies various input combinations to the `DPR` and observes the output.

## Prerequisites

- **Active-HDL**: Ensure you have Active-HDL installed to compile and simulate the VHDL code.

## Setup

1. **Download and Install Active-HDL**: Get Active-HDL from [Aldec](https://www.aldec.com/en/products/active-hdl) and follow the installation instructions.

2. **Project Files**: Place the VHDL files in the appropriate directory structure.

3. **Compile the Project**:
   - Open Active-HDL and create a new project.
   - Add all VHDL files to the project.
   - Compile the project using the Active-HDL GUI.

## Simulation

1. **Setup Simulation**:
   - Open Active-HDL and navigate to the simulation workspace.
   - Load the compiled project.

2. **Run Simulation**:
   - Select the testbench `tb_DPR` and run the simulation.
   - Analyze the results using the waveform viewer to ensure correct functionality.

## Usage

- **Pattern Recognition**: The system identifies specific patterns in the input bit stream and produces an output based on detected patterns.
- **Components Interaction**: Each component performs a distinct function and interacts with other components to achieve the overall system goal.

## Troubleshooting

- **Compilation Errors**: Verify that all VHDL files are correctly written and included in the project. Check for syntax errors.
- **Simulation Issues**: Ensure that the clock and reset signals are correctly configured and that the stimulus process provides valid test vectors.

## License

This project is for educational purposes only. Refer to the Active-HDL licensing terms for commercial use.
