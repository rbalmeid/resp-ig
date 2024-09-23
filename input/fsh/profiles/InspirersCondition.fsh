// Define the Condition Profile
Profile: InspirersCondition
Parent: Condition
Id: inspirers-condition
Title: "Inspirers Condition Profile"
Description: "Defines constraints and extensions on the Condition resource for the minimal set of data to query and retrieve patient observations."

* subject 1..1 MS // Must be present

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