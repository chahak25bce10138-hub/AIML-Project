# 📋 Project Statement

## Course
Artificial Intelligence & Machine Learning (AIML)
VITyarthi | 

---

## Problem Statement

In many rural and semi-urban areas, access to qualified medical professionals is limited. People often rely on unreliable internet searches or word-of-mouth to understand their symptoms, leading to delayed treatment or incorrect self-medication.

**Can a rule-based AI system help a layperson identify a probable illness based on their symptoms and recommend a safe course of action — without needing internet access or a doctor immediately available?**

---

## What This Project Builds

**MediBot** is a rule-based Medical Symptom Diagnosis Expert System built using **SWI-Prolog**.

It demonstrates one of the foundational paradigms in Artificial Intelligence: **Knowledge Representation and Rule-Based Inference** — the same technology used in early AI systems like MYCIN (1970s) that pioneered medical AI.

---

## Why This Is Core AIML

| AIML Concept | How This Project Demonstrates It |
|---|---|
| Knowledge Representation | Symptoms and diseases stored as Prolog facts and rules |
| Rule-Based Inference | Horn clauses implement IF-THEN diagnostic logic |
| Expert Systems | System mimics the reasoning of a medical expert |
| Logical Deduction | Prolog's backtracking engine searches for valid diagnoses |
| Separation of Knowledge and Inference | KB files (`.pl`) are separate from the engine (`main.pl`) |

---

## Scope and Limitations

- Covers 9 common conditions: Cold, Flu, COVID-19, Strep Throat, Migraine, Gastroenteritis, Pneumonia, Allergic Reaction, and Dengue Fever
- Uses a Yes/No symptom questionnaire (14 symptoms)
- **For educational purposes only** — not a substitute for real medical advice
- Does not handle multiple simultaneous diagnoses (first match wins)

---

## Technologies Used

- **Language:** Prolog (SWI-Prolog 9.x)
- **Paradigm:** Logic Programming / Rule-Based AI
- **Files:** `main.pl`, `kb_symptoms.pl`, `kb_treatments.pl`

---

*"The goal of AI is not to replace human experts, but to make their expertise accessible to everyone."*
