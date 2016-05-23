module Adm27DB (
    meagen
  , phoebe
  , scott
  , zoe
) where

import Adm27Data

phoebe :: Guide
phoebe = Guide { guide_name = "Phoebe Sedgwick"
               , guide_unit = "Lane Cove Guides"
               , dob = "25 Feb 2002"
               , medicareNumber = "2398 28844 8"
               , medicareReference = "2"
               , medicareAddress = "42 Hallam Ave\nLane Cove NSW 2066"
               , privateHealthCover = True
               , privateHealthFund = "HCF 17274850"
               , privateHealthNumber = "13 13 34"
               , ambulanceCover = True
               , medicalEmergencyContact = "Scott Sedgwick"
               , medicalEmergencyPhone = "02 9418 7603"
               , medicalEmergencyMobile = "0418 110 370"
               , guideMembershipNumber = "40974"
               , guideMembershipExpiry = "2 Oct 2015"
               , takingMedication = False
               , firstAiderInfo = "N/A"
               , contactLenses = False
               , lastTetanusShot = "6 Feb 2006"
               , allergyDetails = "N/A"
               , chronicIllness = False
               , chronicIllnessDetails = "N/A"
               , knowsAboutMenstruation = True
               , specialFoodRequirements = "N/A"
               , canTakeParacetamol = True
               , swimmingDistance = "200m"
               , sufferAsthma = False
               , sufferBedWetting = False
               , sufferDiabetes = False
               , sufferEpilepsy = False
               , sufferSleepwalking = False
               , sufferFainting = False
               , sufferHayFever = False
               , sufferNosebleeds = False
               , sufferSevereAllergies = False
               , activityExceptions = "N/A"
               }

zoe :: Guide
zoe    = Guide { guide_name = "Zoe Sedgwick"
               , guide_unit = "Lane Cove Guides"
               , dob = "18 Apr 2004"
               , medicareNumber = "2398 28844 8"
               , medicareReference = "4"
               , medicareAddress = "42 Hallam Ave\nLane Cove NSW 2066"
               , privateHealthCover = True
               , privateHealthFund = "HCF 17274850"
               , privateHealthNumber = "13 13 34"
               , ambulanceCover = True
               , medicalEmergencyContact = "Scott Sedgwick"
               , medicalEmergencyPhone = "02 9418 7603"
               , medicalEmergencyMobile = "0418 110 370"
               , guideMembershipNumber = "48514"
               , guideMembershipExpiry = "20 Oct 2015"
               , takingMedication = True
               , firstAiderInfo = "Antibiotics for sore throat"
               , contactLenses = False
               , lastTetanusShot = "10 Apr 2008"
               , allergyDetails = "N/A"
               , chronicIllness = False
               , chronicIllnessDetails = "N/A"
               , knowsAboutMenstruation = False
               , specialFoodRequirements = "N/A"
               , canTakeParacetamol = True
               , swimmingDistance = "100m"
               , sufferAsthma = False
               , sufferBedWetting = False
               , sufferDiabetes = False
               , sufferEpilepsy = False
               , sufferSleepwalking = False
               , sufferFainting = False
               , sufferHayFever = False
               , sufferNosebleeds = False
               , sufferSevereAllergies = False
               , activityExceptions = "N/A"
               }

scott :: Guardian
scott = Guardian { guardian_name = "Scott Sedgwick"
                 , address = "42 Hallam Ave, Lane Cove"
                 , state = "NSW"
                 , postcode = "2066"
                 , businessPhone = "02 9425 5417"
                 , homePhone = "02 9418 7603"
                 , mobilePhone = "0418 110 370"
                 }

meagen :: Guardian
meagen = Guardian "Meagen Gardiner"
                  "42 Hallam Ave, Lane Cove"
                  "NSW"
                  "2066"
                  "02 9391 9657"
                  "02 9418 7603"
                  "0418 115 198" 
