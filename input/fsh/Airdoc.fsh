// @Name: Profile
// @Description: Example of a profile of the Patient resource. This example includes a few of the most commonly used constraints and documentation features of FHIR profiles.

Profile:     InspirersPatient
Parent:      Patient
Id:          inspirers-patient
Title: "Inspirers Patient Profile"
Description: "Defines constraints and extensions on the Patient resource for the minimal set of data to query and retrieve patient observations."


// Require at least one value inside the `name` element
* name 1..* MS
// Mark elements as MustSupport
* name and name.given and name.family MS
// Provide custom prose descriptions of the `name` element:
//
// The contents of `^short` appears in the "Description & Constraints" column in the differential or
// snapshot tables of a built Implementation Guide.
//
// The `^definition` displays when clicking on an element's name in the differential or snapshot
// tables when building a built Implementation Guide. This can also be accessed in the "Detailed
// Descriptions" tab on a profile page.
* name ^short = "Official name (i.e., legal name) of patient"
* name ^definition = "Official name (i.e., legal name) of the patient, corresponding to `official` in [this value set](https://www.hl7.org/fhir/valueset-name-use.html)."

// The contents of `^comment` are also displayed on the "Detailed Descriptions" tab
// in the built Implementation Guide.
* birthDate ^comment = "If exact date of birth is partially or completely unknown, Implementers SHALL populate this element with the date of birth information listed on the patient's government-issued identification."

// Do not allow `gender` to be included.
* gender 1..1 MS

// Require a value from a specific value set be used for an element
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)

// Restrict `something[x]` to a specific type -- in this case only allowing dateTime to be used
* deceased[x] only dateTime


// Define the Observation Profile
Profile: InspirersPractioner
Parent: Practitioner
Id: inspirers-practioner
Title: "Inspirers Practitioner Profile"
Description: "Defines constraints and extensions on the Practitioner resource for the minimal set of data to query and retrieve patient practitioners."


// Define the Observation Profile
Profile: InspirersBaseObservation
Parent: Observation
Id: inspirers-base-observation
Title: "Inspirers Base Observation Profile"
Description: "Defines constraints and extensions on the Observation resource for the minimal set of data to query and retrieve patient observations."

* status 1..1 MS
* category 1..1 MS
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* code 1..1 MS
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1
* subject 1..1 MS
* effective[x] 1..1 MS
* value[x] 0..1 MS
* dataAbsentReason 0..1 MS
* performer 0..* MS

// Binding of the code element to the LOINC value set
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.version from http://hl7.org/fhir/ValueSet/observation-codes (preferred)

// Example binding of the category element to the US Core Observation Category Codes value set
* category.coding.code from http://hl7.org/fhir/us/core/ValueSet/us-core-observation-category (preferred)

// Example binding of the value[x] element to the SimpleQuantity value set for quantity values
* valueQuantity.code from http://unitsofmeasure.org (preferred)
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)

// Example binding of the dataAbsentReason element to the DataAbsentReason value set
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)


// Define the Condition Profile
Profile: InspirersBaseCondition
Parent: Condition
Id: inspirers-base-condition
Title: "Inspirers Base Condition Profile"
Description: "Defines constraints and extensions on the Condition resource for the minimal set of data to query and retrieve patient observations."

* subject 1..1 // Must be present
* subject.reference 1..1 MS

* clinicalStatus 1..1 MS // Must be present
* verificationStatus 1..1 MS // Must be present
* category 1..1 MS // Must be present
* category.coding 1..1 // Must have at least one coding
* category.coding.system 1..1 MS // Must Support
* category.coding.code 1..1 MS // Must Support

* severity 0..1 MS // Optional but Must Support if present

* code 1..1 // Must be present
* code.coding 1..1 // Must have at least one coding
* code.coding.system 1..1 MS // Must Support
* code.coding.code 1..1 MS // Must Support

* onset[x] 0..1 MS // Optional but Must Support if present
* abatement[x] 0..1 MS // Optional but Must Support if present
* recordedDate 0..1 MS // Optional but Must Support if present


// Define the Observation Profile
Profile: InspirersCarePlan
Parent: CarePlan
Id: inspirers-careplan
Title: "Inspirers Base CarePlan Profile"
Description: "Defines constraints and extensions on the CarePlan resource for the minimal set of data to query and retrieve patient CarePlan."

// Define the Observation Profile
Profile: InspirersCareTeam
Parent: CareTeam
Id: inspirers-careteam
Title: "Inspirers Base CareTeam Profile"
Description: "Defines constraints and extensions on the CareTeam resource for the minimal set of data to query and retrieve patient CareTeam."


// Define the Observation Profile
Profile: InspirersConsent
Parent: Consent
Id: inspirers-consent
Title: "Inspirers Base Consent Profile"
Description: "Defines constraints and extensions on the Consent resource for the minimal set of data to query and retrieve patient Consent."

// Define the Observation Profile
Profile: InspirersCommunication
Parent: Communication
Id: inspirers-communication
Title: "Inspirers Base Communication Profile"
Description: "Defines constraints and extensions on the Communication resource for the minimal set of data to query and retrieve patient Communication."

// Define the Observation Profile
Profile: InspirersGoal
Parent: Goal
Id: inspirers-goal
Title: "Inspirers Goal Profile"
Description: "Defines constraints and extensions on the Goal resource for the minimal set of data to query and retrieve patient Goal."

// Define the Observation Profile
Profile: InspirersMedia
Parent: Media
Id: inspirers-media
Title: "Inspirers Base Media Profile"
Description: "Defines constraints and extensions on the Media resource for the minimal set of data to query and retrieve patient Media."

// Define the Observation Profile
Profile: InspirersMedication
Parent: Medication
Id: inspirers-medication
Title: "Inspirers Base Medication Profile"
Description: "Defines constraints and extensions on the Medication resource for the minimal set of data to query and retrieve patient Medication."

// Define the Observation Profile
Profile: InspirersMedicationAdministration
Parent: MedicationAdministration
Id: inspirers-medicationAdministration
Title: "Inspirers MedicationAdministration Profile"
Description: "Defines constraints and extensions on the MedicationAdministration resource for the minimal set of data to query and retrieve patient MedicationAdministration."

// Define the Observation Profile
Profile: InspirersMedicationStatement
Parent: MedicationStatement
Id: inspirers-medicationstatement
Title: "Inspirers MedicationStatement Profile"
Description: "Defines constraints and extensions on the MedicationStatement resource for the minimal set of data to query and retrieve patient MedicationStatement."


// Define the Observation Profile
Profile: InspirersQuestionnaire
Parent: Questionnaire
Id: inspirers-questionnaire
Title: "Inspirers Questionnaire Profile"
Description: "Defines constraints and extensions on the Questionnaire resource for the minimal set of data to query and retrieve patient Questionnaires."

// Define the Observation Profile
Profile: InspirersQuestionnaireResponse
Parent: QuestionnaireResponse
Id: inspirers-questionnaireresponse
Title: "Inspirers QuestionnaireResponse Profile"
Description: "Defines constraints and extensions on the QuestionnaireResponse resource for the minimal set of data to query and retrieve patient QuestionnaireResponse."



Profile: InspirersRelatedPerson
Parent: RelatedPerson
Id: inspirers-relatedperson
Title: "Inspirers RelatedPerson Profile"
Description: "Defines constraints and extensions on the RelatedPerson resource for the minimal set of data to query and retrieve related persons associated with a patient."



// Define the SNOMED CT ValueSet
ValueSet: InspiresrsSnomedSubset
Id: inspirers-snomed-subset
Title: "Inspiresrs SNOMED CT Subset"
Description: "A subset of SNOMED CT codes for specific use cases in Inspiresrs."
* include codes from system http://snomed.info/sct where concept is-a #73211009 // Diabetes mellitus (example concept)



