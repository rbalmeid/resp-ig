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