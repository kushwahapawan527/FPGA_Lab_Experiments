# 🔢 Experiment 8: 7-Segment Display Interfacing

## 🎯 Objective
To design and simulate a 7-segment display decoder for hexadecimal digits using Verilog HDL.

---

## 📖 Description
A 7-segment display is used to show numeric and hexadecimal values.  
This project converts a 4-bit binary input into corresponding segment signals.

---

## ⚙️ Features
- Supports HEX digits (0–F)
- Combinational logic design
- FPGA compatible
- Easy integration with other modules

---

## 🔢 Segment Mapping

| Input | Output |
|------|--------|
| 0 | 0 |
| 1 | 1 |
| ... | ... |
| F | F |

---

## 🧠 Working Principle
- 4-bit input is given
- Case statement selects segment pattern
- Output drives 7 LEDs (a–g)

---

## 🧪 Simulation

### Inputs Tested:
- 0, 1, 5, A, F

### Output:
- Correct segment patterns observed

---

## 🛠️ Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave

---

## 📌 Applications
- Digital displays
- Embedded systems
- FPGA-based projects

---

## ✅ Conclusion
Successfully implemented a 7-segment display decoder.  
Simulation results verify correct hexadecimal output.

---

## 👨‍💻 Author
Pawan Kushwah  
B.Tech ECE, HNBGU
