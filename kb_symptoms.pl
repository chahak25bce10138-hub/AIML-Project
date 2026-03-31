/* ============================================================
   MediBot: Knowledge Base — Symptom Rules
   File: kb_symptoms.pl
   Description: Rule-based inference rules mapping symptoms
                to probable diseases. This is the "brain" of
                the expert system — the IF-THEN logic.

   Core AIML Concept: Knowledge Representation using Horn Clauses.
   Each rule is a Prolog clause of the form:
       diagnose(Disease) :- symptom(A), symptom(B), ...
   which reads as: "Diagnose Disease IF symptom A AND symptom B ..."
   ============================================================ */


% ── Symptom List (used to prompt the user) ───────────────────
% This list drives the question-asking loop in main.pl
symptom_list([
    fever,
    cough,
    sore_throat,
    runny_nose,
    body_aches,
    fatigue,
    shortness_of_breath,
    nausea,
    vomiting,
    diarrhea,
    headache,
    rash,
    chest_pain,
    loss_of_taste_or_smell
]).


% ============================================================
%  DIAGNOSTIC RULES
%  Format: diagnose(disease) :- symptom(x), symptom(y), ...
% ============================================================

% ── Common Cold ──────────────────────────────────────────────
% Mild illness; key markers are runny nose + sore throat WITHOUT high fever
diagnose(common_cold) :-
    symptom(runny_nose),
    symptom(sore_throat),
    symptom(cough),
    \+ symptom(fever).          % NOT fever — differentiates from flu

% ── Seasonal Influenza (Flu) ─────────────────────────────────
% More severe than cold; sudden fever + body aches are hallmarks
diagnose(influenza) :-
    symptom(fever),
    symptom(body_aches),
    symptom(fatigue),
    symptom(cough).

% ── COVID-19 ─────────────────────────────────────────────────
% Loss of taste/smell is the key distinguishing feature
diagnose(covid_19) :-
    symptom(fever),
    symptom(cough),
    symptom(loss_of_taste_or_smell).

% ── Strep Throat ─────────────────────────────────────────────
% Severe throat pain + fever, but typically NO cough
diagnose(strep_throat) :-
    symptom(sore_throat),
    symptom(fever),
    \+ symptom(cough).          % Absence of cough is a key marker

% ── Migraine ─────────────────────────────────────────────────
% Intense headache often accompanied by nausea
diagnose(migraine) :-
    symptom(headache),
    symptom(nausea),
    \+ symptom(fever).

% ── Gastroenteritis (Stomach Flu) ────────────────────────────
% GI symptoms cluster; caused by viral/bacterial gut infection
diagnose(gastroenteritis) :-
    symptom(nausea),
    symptom(vomiting),
    symptom(diarrhea).

% ── Pneumonia ────────────────────────────────────────────────
% Serious lung infection; chest pain + breathing difficulty
diagnose(pneumonia) :-
    symptom(fever),
    symptom(cough),
    symptom(chest_pain),
    symptom(shortness_of_breath).

% ── Allergic Reaction ────────────────────────────────────────
% Rash + runny nose WITHOUT fever suggests allergy not infection
diagnose(allergic_reaction) :-
    symptom(rash),
    symptom(runny_nose),
    \+ symptom(fever).

% ── Dengue Fever ─────────────────────────────────────────────
% High fever + rash + body aches; common in tropical regions
diagnose(dengue_fever) :-
    symptom(fever),
    symptom(rash),
    symptom(body_aches),
    symptom(headache).
