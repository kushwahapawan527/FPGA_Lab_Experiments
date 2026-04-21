# 🔌 Experiment 3: Multiplexer & Demultiplexer

## 🎯 Objective

To design and simulate **Multiplexer (MUX)** and **Demultiplexer (DEMUX)** using Verilog HDL and verify their behavior using waveform analysis.

---

# 🔷 4-to-1 Multiplexer

## 📘 Description

A Multiplexer (MUX) selects one input from multiple inputs based on select lines and forwards it to a single output.

---

## 📊 Truth Table

| S1 | S0 | Output (Y) |
| -- | -- | ---------- |
| 0  | 0  | I0         |
| 0  | 1  | I1         |
| 1  | 0  | I2         |
| 1  | 1  | I3         |

---

## ⚙️ Working

* Inputs: **I0, I1, I2, I3**
* Select Lines: **S1, S0**
* Output depends on select lines:

  * `00 → I0`
  * `01 → I1`
  * `10 → I2`
  * `11 → I3`

---

## 📷 Simulation Result

![MUX Waveform](waveform_mux.png)

---

# 🔷 1-to-4 Demultiplexer

## 📘 Description

A Demultiplexer (DEMUX) routes a single input to one of the multiple outputs based on select lines.

---

## 📊 Truth Table

| S1 | S0 | Y3 Y2 Y1 Y0 |
| -- | -- | ----------- |
| 0  | 0  | 0001        |
| 0  | 1  | 0010        |
| 1  | 0  | 0100        |
| 1  | 1  | 1000        |

---

## ⚙️ Working

* Input: **D**
* Select Lines: **S1, S0**
* Output is **one-hot encoded**

  * Only one output HIGH at a time

---

## 📷 Simulation Result

![DEMUX Waveform](waveform_demux.png)

---

# 🛠️ Tools Used

* 🔹 Verilog HDL
* 🔹 Icarus Verilog (Simulation)
* 🔹 GTKWave (Waveform Viewer)
* 🔹 GitHub

---

# 🧠 Key Concepts

* **Multiplexer (MUX):** Selects one input from many
* **Demultiplexer (DEMUX):** Routes one input to many outputs
* **Select Lines:** Control signal selection
* **One-Hot Encoding:** Only one output is HIGH at a time

---

# ✅ Conclusion

The 4-to-1 Multiplexer and 1-to-4 Demultiplexer were successfully designed and simulated using Verilog HDL.
The simulation waveforms confirm correct input selection and output routing based on select lines.

---

# 👨‍💻 Author

**Pawan Kushwah**
B.Tech Electronics & Communication Engineering
HNB Garhwal University

---
