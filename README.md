# 🏥 MediBot: Medical Symptom Diagnosis Expert System

> A Rule-Based AI Expert System built in Prolog | AIML VITyarthi Project

---

## 📌 What Is This?

**MediBot** is a Prolog-based **Expert System** that diagnoses common medical conditions from user-reported symptoms and recommends a treatment action plan.

It is built on **Rule-Based Inference** — one of the oldest and most important paradigms in Artificial Intelligence. The same approach was used in **MYCIN** (Stanford, 1970s), one of the first AI systems to outperform human doctors in diagnosing bacterial infections.

This project demonstrates core AIML concepts including:
- Knowledge Representation using Prolog facts and rules
- Rule-Based Inference via Horn Clauses
- Expert System Architecture (Inference Engine + Knowledge Base)
- Logical deduction and Prolog backtracking

---

## 👨‍💻 Student Details

| Field | Details |
|---|---|
| **Student Name** | *Chahak Gupta* |
| **Registration Number** | *(25BCE10138)* |
| **Course** | Artificial Intelligence & Machine Learning |
| **Platform** | VITyarthi |


---

## 📁 Repository Structure

```
medibot-aiml-project/
│
├── main.pl            # Entry point — control flow, question-asking loop
├── kb_symptoms.pl     # Knowledge Base: symptom → disease inference rules
├── kb_treatments.pl   # Knowledge Base: disease → treatment action plans
├── statement.md       # Problem statement and project scope
└── README.md          # This file
```

---

## 🧠 How It Works

```
User answers Yes/No questions
        ↓
Symptoms are stored as Prolog facts: symptom(fever), symptom(cough) ...
        ↓
Inference Engine (main.pl) calls diagnose/1
        ↓
kb_symptoms.pl is searched — first matching rule wins
        ↓
kb_treatments.pl prints the recommended action plan
```

This is **forward-chaining logic**: we start from known facts (symptoms) and derive a conclusion (diagnosis).

---

## 🩺 Conditions Covered

| # | Condition | Key Distinguishing Symptoms |
|---|---|---|
| 1 | Common Cold | Runny nose + sore throat, **no fever** |
| 2 | Influenza (Flu) | Fever + body aches + fatigue + cough |
| 3 | COVID-19 | Fever + cough + **loss of taste/smell** |
| 4 | Strep Throat | Sore throat + fever + **no cough** |
| 5 | Migraine | Headache + nausea, **no fever** |
| 6 | Gastroenteritis | Nausea + vomiting + diarrhea |
| 7 | Pneumonia | Fever + cough + chest pain + breathlessness |
| 8 | Allergic Reaction | Rash + runny nose, **no fever** |
| 9 | Dengue Fever | Fever + rash + body aches + headache |

---

## 🚀 How to Run

### Prerequisites

Install **SWI-Prolog** on your system:

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get install swi-prolog
```

**Windows:**
Download from [https://www.swi-prolog.org/download/stable](https://www.swi-prolog.org/download/stable)

**macOS:**
```bash
brew install swi-prolog
```

---

### Step 1 — Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/medibot-aiml-project.git
cd medibot-aiml-project
```

### Step 2 — Launch SWI-Prolog

```bash
swipl
```

### Step 3 — Load and Run MediBot

```prolog
?- consult('main.pl').
?- start_diagnosis.
```

---

## 💻 Sample Output

```
=====================================================
  MediBot: Medical Symptom Diagnosis Expert System  
  Powered by Rule-Based AI Inference (Prolog)       
=====================================================

NOTE: This system is for educational purposes only.
      Always consult a real doctor for medical advice.

Please answer the following questions with yes. or no.

Do you have fever? yes.
Do you have cough? yes.
Do you have sore_throat? no.
Do you have runny_nose? no.
Do you have body_aches? no.
Do you have fatigue? no.
Do you have shortness_of_breath? no.
Do you have nausea? no.
Do you have vomiting? no.
Do you have diarrhea? no.
Do you have headache? no.
Do you have rash? no.
Do you have chest_pain? no.
Do you have loss_of_taste_or_smell? yes.

--- Analysing your symptoms... ---

DIAGNOSIS: Based on your symptoms, a possible condition is: covid_19

RECOMMENDED ACTION:
  Condition: COVID-19 (possible)
  1. ISOLATE immediately to prevent spread to others.
  2. Get a PCR or antigen test to confirm diagnosis.
  3. Rest, hydrate, and monitor oxygen levels if possible.
  4. Take paracetamol for fever — avoid ibuprofen without consulting a doctor.
  5. Seek hospital care urgently if SpO2 drops below 94%
     or breathing becomes laboured.

=====================================================
  Diagnosis Complete. Stay safe!
=====================================================
```

---

## ⚠️ Disclaimer

This system is built **for educational purposes only** as part of a university AIML course. It is **not** a substitute for professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare provider.

---

## 📚 References & Further Reading

- [SWI-Prolog Official Documentation](https://www.swi-prolog.org/pldoc/index.html)
- MYCIN Expert System — Shortliffe, E.H. (1976), *Computer-Based Medical Consultations*
- [Learn Prolog Now! — Free Online Book](https://www.let.rug.nl/bos/lpn/lpnpage.php?pageid=online)
- Russell & Norvig — *Artificial Intelligence: A Modern Approach* (Chapter 7: Logical Agents)
