// Define the SNOMED CT ValueSet
ValueSet: InspiresrsSnomedSubset
Id: inspirers-snomed-subset
Title: "Inspiresrs SNOMED CT Subset"
Description: "A subset of SNOMED CT codes for specific use cases in Inspiresrs."
* include codes from system http://snomed.info/sct where concept is-a #73211009 // Diabetes mellitus (example concept)
