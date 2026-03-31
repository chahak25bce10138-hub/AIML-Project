/* ============================================================
   MediBot: Medical Symptom Diagnosis Expert System
   File: main.pl
   Description: Entry point and control flow for the system.
                Loads knowledge bases and runs the diagnosis.
   Course: Artificial Intelligence & Machine Learning
   ============================================================ */

:- consult('kb_symptoms.pl').    % Load symptom-to-disease rules
:- consult('kb_treatments.pl').  % Load treatment recommendations

% ── Entry point ──────────────────────────────────────────────
start_diagnosis :-
    nl,
    write('====================================================='), nl,
    write('  MediBot: Medical Symptom Diagnosis Expert System  '), nl,
    write('  Powered by Rule-Based AI Inference (Prolog)       '), nl,
    write('====================================================='), nl, nl,
    write('NOTE: This system is for educational purposes only.'), nl,
    write('      Always consult a real doctor for medical advice.'), nl, nl,

    % Collect symptoms from user
    write('Please answer the following questions with yes. or no.'), nl, nl,

    ask_symptoms,

    nl, write('--- Analysing your symptoms... ---'), nl, nl,

    % Try to find a matching diagnosis
    (   diagnose(Disease)
    ->  write('DIAGNOSIS: Based on your symptoms, a possible condition is: '),
        write(Disease), nl, nl,
        write('RECOMMENDED ACTION:'), nl,
        treat(Disease)
    ;   write('No specific diagnosis could be made with the given symptoms.'), nl,
        write('Please consult a medical professional immediately.'), nl
    ),

    nl, write('====================================================='), nl,
    write('  Diagnosis Complete. Stay safe!'), nl,
    write('====================================================='), nl.


% ── Ask the user about each possible symptom ─────────────────
ask_symptoms :-
    symptom_list(Symptoms),
    forall(member(S, Symptoms), ask(S)).

% ── ask/1: prompt user and store answer in dynamic DB ─────────
ask(Symptom) :-
    format('Do you have ~w? ', [Symptom]),
    read(Reply),
    (   Reply == yes
    ->  assertz(symptom(Symptom))   % Store confirmed symptom
    ;   true                        % Do nothing if answer is no
    ).

% ── Clean up dynamic facts between runs ──────────────────────
:- dynamic symptom/1.
