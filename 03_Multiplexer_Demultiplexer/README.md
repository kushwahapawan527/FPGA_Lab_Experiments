# 🔌 Experiment 3: Multiplexer & Demultiplexer

## 🎯 Objective

To design and simulate Multiplexer (MUX) and Demultiplexer (DEMUX) circuits using Verilog HDL.

---

# 🔷 4-to-1 Multiplexer

## 📘 Description

A multiplexer selects one input from multiple inputs based on select lines.

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

* 4 inputs → I0, I1, I2, I3
* 2 select lines → S1, S0
* Output depends on select lines

---

## 📷 Simulation Result

![MUX Waveform](waveform_mux.png)

---

# 🔷 1-to-4 Demultiplexer

## 📘 Description

A demultiplexer routes a single input to one of multiple outputs based on select lines.

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

* 1 input → D
* 2 select lines → S1, S0
* Output is **one-hot** (only one output active at a time)

---

## 📷 Simulation Result

![DEMUX Waveform](waveform_demux.png)

---

# 🛠️ Tools Used

* 🧠 Verilog HDL
* ⚡ Icarus Verilog (Simulation)
* 📊 GTKWave (Waveform Viewer)
* 🌐 GitHub

---

# 📌 Key Concepts

* **Multiplexer (MUX):** Selects one input from many
* **Demultiplexer (DEMUX):** Routes one input to many outputs
* **Select Lines:** Control signal selection
* **One-Hot Output:** Only one output is HIGH at a time

---

# ✅ Conclusion

Successfully designed and simulated 4-to-1 Multiplexer and 1-to-4 Demultiplexer using Verilog HDL.
The waveform verifies correct selection and routing based on select lines.

---

# 👨‍💻 Author

**Pawan Kushwah**
B.Tech Electronics & Communication Engineering
HNB Garhwal University

---

