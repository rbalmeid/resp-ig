// Define the Observation Profile
Profile: InspirersBaseObservation
Parent: Observation
Id: inspirers-observation
Title: "Inspirers Observation Profile"
Description: "Defines constraints and extensions on the Observation resource for the minimal set of data to query and retrieve patient observations."

* subject 1..1 MS
* effectiveDateTime 1..1 MS

* status 1..1 MS
* category 1..1 MS
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)

* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1

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