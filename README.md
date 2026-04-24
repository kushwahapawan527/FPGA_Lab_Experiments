# 🚀 FPGA Lab Experiments (Verilog HDL)

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Tool](https://img.shields.io/badge/Tool-GTKWave-green)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-orange)

---

## 📌 Overview

This repository contains a complete set of FPGA lab experiments implemented using **Verilog HDL**, including simulation and waveform verification.

The project demonstrates strong understanding of:

- Digital Logic Design
- Sequential Circuits
- Finite State Machines
- Arithmetic Units
- CPU Design

---

## 🧪 Experiments

| No. | Experiment |
|-----|----------|
| 01 | Full Adder |
| 02 | Encoder & Decoder |
| 03 | Multiplexer & Demultiplexer |
| 04 | Counter |
| 05 | Shift Register |
| 06 | FSM (Mealy & Moore) |
| 07 | Multiplier |
| 08 | 7-Segment Display |
| 09 | Divider |
| 10 | Floating Point Adder |
| 11 | ALU |
| 12 | CPU (Control Unit + ALU) |

---

## 🧠 Highlight Projects

### 🔹 ALU
- 8-bit Arithmetic & Logic operations
- Supports ADD, SUB, AND, OR, XOR, NOT, SHIFT

### 🔹 CPU
- Instruction-based execution
- Control Unit + ALU integration
- Accumulator architecture

---

## 🛠 Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Vivado (FPGA Implementation)

---

## ▶️ How to Run

```bash
iverilog file.v testbench.v
vvp a.out
gtkwave dump.vcd
