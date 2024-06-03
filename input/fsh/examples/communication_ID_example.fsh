Alias: $communication-category = http://hl7.org/fhir/ValueSet/communication-category

Instance: communication_ID_example
InstanceOf: Communication
Usage: #example
* meta.source = "Coaching System"
* status = #completed
* category = $communication-category#instruction
* subject = Reference(Patient/patient_ID_example)
* sent = "2020-10-11T03:01:10.001Z"
* reasonCode = codesystem.inspirers.med.up.pt#AMP187
* payload.contentString = "Checking and correcting inhaler technique using a standardized checklist takes only 2/3 minutes and leads to improved asthma control in adults (Evidence A). A physical demonstration is essential to improve inhaler technique."