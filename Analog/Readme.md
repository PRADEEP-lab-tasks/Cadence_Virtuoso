# Analog IC Design using Cadence Virtuoso (180nm & 90nm)

This repository contains analog CMOS circuit designs implemented using **Cadence Virtuoso**, simulated with **Spectre**, and verified through **DRC/LVS** in **180nm and 90nm CMOS technologies**.

## Tools

- Cadence Virtuoso
- Spectre Simulator
- ADE L / ADE XL
- Layout XL
- Assura / PVS
- CMOS 180nm & 90nm PDKs

---

## Design Flow

```text

Specification
    ↓
Schematic Design
    ↓
Pre-Layout Simulation
    ↓
Layout Design
    ↓
DRC Verification
    ↓
LVS Verification
    ↓
Parasitic Extraction (PEX)
    ↓
Post-Layout Simulation
```

---

## Projects

### CMOS Inverter
- DC Transfer Characteristics
- Noise Margin Analysis
- Propagation Delay Measurement
- Power Consumption Analysis


### Differential Amplifier
- Differential Gain
- Common Mode Gain
- CMRR Analysis
- Frequency Response

### Two-Stage Operational Amplifier
- DC Gain > 60 dB
- Phase Margin Optimization
- Unity Gain Bandwidth Analysis
- Slew Rate Measurement

### Folded Cascode OTA
- High Gain Design
- Low Power Operation
- Stability Analysis



### Voltage Controlled Oscillator (VCO)
- Frequency Tuning Range
- Oscillation Frequency Analysis
- Power Consumption

---

## Layout Techniques

- Common Centroid Layout
- Interdigitated Structures
- Dummy Devices
- Symmetric Placement
- Guard Rings
- Matching-Oriented Routing

---

## Verification

✅ DRC Clean

✅ LVS Matched

✅ Post-Layout Simulations Verified

---

## Performance Parameters

- DC Gain
- Bandwidth
- Phase Margin
- Slew Rate
- Power Dissipation
- CMRR
- PSRR
- Output Swing
- Noise Performance

---

## Repository Structure

```text
Analog/
├── CMOS_Inverter/
├── Current_Mirror/
├── Differential_Amplifier/
├── Two_Stage_OpAmp/
├── Folded_Cascode_OTA/
├── Comparator/
├── VCO/
├── Layouts/
├── Reports/
└── Simulation_Results/
```

---

## References

1. Design of Analog CMOS Integrated Circuits – Behzad Razavi
2. CMOS Analog Circuit Design – Allen & Holberg
3. Analog Integrated Circuit Design – Johns & Martin

---

## Author

**Pradeep**

Analog & Mixed Signal IC Design  
Cadence Virtuoso | Spectre | Custom Layout Design
