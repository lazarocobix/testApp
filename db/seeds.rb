# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Facility.create(name: 'Test Hospital')
diagnosis = Diagnosis.create(coding_system: '10002', code: '102', description: 'Diagnosis test description')
symptoms = Symptom.create(description: 'Symptom test description')
observations = Observation.create(description: 'Observation test description', moment: Date.current)
allergy = Allergy.create(description: 'Allergy test description')
frequency = OrderFrequency.create(value: 'Order frequency test', unit: 'hour')
medication = MedicationOrder.create(name: 'Medication order', unit: 'mg', dosage: 10, route: 'PO', order_frequency: frequency, necessity: 'Test')
diagnosisP = DiagnosticProcedure.create(description: 'DP test', moment: Date.current)
treatment = Treatment.create(description: 'Treatment test', necessity: 'test')
admission = Admission.create(moment: Date.current, diagnoses: [diagnosis], symptoms: [symptoms], observations: [observations])
Patient.create(first_name: 'Test', middle_name: 'test', last_name: 'test', age: 25, mr: 'x', dob: Date.current, gender: 1, admission: admission, allergies: [allergy], medication_orders: [medication], diagnoses: [diagnosis], diagnostic_procedures: [diagnosisP], treatments: [treatment])
