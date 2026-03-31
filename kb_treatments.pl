/* ============================================================
   MediBot: Knowledge Base — Treatment Recommendations
   File: kb_treatments.pl
   Description: Maps each diagnosed disease to a recommended
                action plan. This separates the WHAT (diagnosis)
                from the HOW (treatment) — a key design principle
                in expert system architecture.

   Core AIML Concept: Separation of the Inference Engine from
   the Knowledge Base makes the system modular and extensible.
   ============================================================ */


% ── treat/1: Print action plan for a given disease ───────────
% Each clause handles one disease and prints numbered steps.

treat(common_cold) :-
    write('  Condition: Common Cold'), nl,
    write('  1. Rest at home and stay hydrated (water, warm broths).'), nl,
    write('  2. Take OTC decongestants or antihistamines for relief.'), nl,
    write('  3. Gargle with warm salt water for throat discomfort.'), nl,
    write('  4. Symptoms usually resolve within 7-10 days.'), nl,
    write('  5. See a doctor if symptoms worsen after 10 days.'), nl.

treat(influenza) :-
    write('  Condition: Seasonal Influenza (Flu)'), nl,
    write('  1. Rest completely — do not go to school or work.'), nl,
    write('  2. Drink plenty of fluids to prevent dehydration.'), nl,
    write('  3. Take paracetamol/ibuprofen to manage fever and aches.'), nl,
    write('  4. Antiviral medication (e.g., Oseltamivir) may help if'), nl,
    write('     taken within 48 hours of symptom onset — see a doctor.'), nl,
    write('  5. Seek emergency care if breathing becomes difficult.'), nl.

treat(covid_19) :-
    write('  Condition: COVID-19 (possible)'), nl,
    write('  1. ISOLATE immediately to prevent spread to others.'), nl,
    write('  2. Get a PCR or antigen test to confirm diagnosis.'), nl,
    write('  3. Rest, hydrate, and monitor oxygen levels if possible.'), nl,
    write('  4. Take paracetamol for fever — avoid ibuprofen without'), nl,
    write('     consulting a doctor.'), nl,
    write('  5. Seek hospital care urgently if SpO2 drops below 94%'), nl,
    write('     or breathing becomes laboured.'), nl.

treat(strep_throat) :-
    write('  Condition: Strep Throat (Bacterial)'), nl,
    write('  1. See a doctor — strep throat requires ANTIBIOTICS.'), nl,
    write('  2. Do NOT skip the full antibiotic course even if you'), nl,
    write('     feel better early.'), nl,
    write('  3. Rest your voice and avoid cold drinks.'), nl,
    write('  4. Gargle warm salt water every few hours.'), nl,
    write('  5. Stay home until fever-free for 24 hours.'), nl.

treat(migraine) :-
    write('  Condition: Migraine'), nl,
    write('  1. Move to a quiet, dark room and rest.'), nl,
    write('  2. Apply a cold pack to your forehead or neck.'), nl,
    write('  3. Take OTC pain relief (ibuprofen/paracetamol) early.'), nl,
    write('  4. Stay hydrated — dehydration is a common trigger.'), nl,
    write('  5. Track your triggers (stress, food, sleep) in a diary.'), nl,
    write('  6. See a neurologist if migraines occur more than 4x/month.'), nl.

treat(gastroenteritis) :-
    write('  Condition: Gastroenteritis (Stomach Flu)'), nl,
    write('  1. HYDRATION is critical — sip water or ORS frequently.'), nl,
    write('  2. Avoid solid food for a few hours; then eat bland foods'), nl,
    write('     (banana, rice, toast).'), nl,
    write('  3. Avoid dairy, caffeine, and fatty foods.'), nl,
    write('  4. Most cases resolve in 1-3 days.'), nl,
    write('  5. See a doctor if diarrhea contains blood or lasts >3 days.'), nl.

treat(pneumonia) :-
    write('  Condition: Pneumonia'), nl,
    write('  1. *** SEEK MEDICAL ATTENTION IMMEDIATELY ***'), nl,
    write('  2. Pneumonia requires a chest X-ray for confirmation.'), nl,
    write('  3. Bacterial pneumonia is treated with antibiotics.'), nl,
    write('  4. Viral pneumonia requires supportive care and rest.'), nl,
    write('  5. Do NOT self-medicate — this is a serious condition.'), nl.

treat(allergic_reaction) :-
    write('  Condition: Allergic Reaction'), nl,
    write('  1. Identify and avoid the allergen (pollen, dust, food, etc.).'), nl,
    write('  2. Take an antihistamine (e.g., cetirizine, loratadine).'), nl,
    write('  3. Hydrocortisone cream may help for skin rash.'), nl,
    write('  4. If throat swelling or breathing difficulty occurs,'), nl,
    write('     use an EpiPen (if available) and call emergency services.'), nl,
    write('  5. Consult an allergist to identify specific triggers.'), nl.

treat(dengue_fever) :-
    write('  Condition: Dengue Fever (possible)'), nl,
    write('  1. *** CONSULT A DOCTOR AND GET A BLOOD TEST IMMEDIATELY ***'), nl,
    write('  2. Rest and drink lots of fluids — coconut water is excellent.'), nl,
    write('  3. Take paracetamol for fever ONLY — NEVER aspirin or ibuprofen'), nl,
    write('     as they can cause dangerous bleeding in dengue.'), nl,
    write('  4. Monitor platelet count through regular blood tests.'), nl,
    write('  5. Hospitalisation may be needed if platelet count drops sharply.'), nl.
