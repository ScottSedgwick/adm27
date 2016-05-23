module Adm27Page2 (
  drawPage2
) where

import Graphics.PDF
import Adm27Data
import Adm27Graphics
import Adm27Images

drawPage2 :: Activity -> Guide -> Guardian -> PDF()
drawPage2 activity guide guardian = do
  page <- addPage Nothing
  drawImage 10  85.5 jpegScissors page
  drawImage 10 175.2 jpegScissors page

  drawChoice 106.8 109.6 138.5 109.6 (takingMedication guide) jpegTick page
  drawChoice 106.8 151.0 138.5 151.0 (contactLenses guide)    jpegTick page

  drawChoice 180.0 203.0 180.0 209.5 (chronicIllness guide)         jpegTick page
  drawChoice 122.4 217.7 142.5 217.7 (knowsAboutMenstruation guide) jpegTick page
  drawChoice 169.2 239.7 169.2 245.8 (canTakeParacetamol guide)     jpegTick page

  drawIf 14 200.60 (sufferAsthma guide) jpegTick page
  drawIf 14 207.33 (sufferBedWetting guide) jpegTick page
  drawIf 14 214.06 (sufferDiabetes guide) jpegTick page
  drawIf 14 220.79 (sufferEpilepsy guide) jpegTick page
  drawIf 14 227.52 (sufferSleepwalking guide) jpegTick page
  drawIf 14 234.25 (sufferFainting guide) jpegTick page
  drawIf 14 240.98 (sufferHayFever guide) jpegTick page
  drawIf 14 247.71 (sufferNosebleeds guide) jpegTick page
  drawIf 14 254.44 (sufferSevereAllergies guide) jpegTick page

  drawWithPage page $ do
    drawMyText (adm fonts) 181.9 10.8 "ADM.27"
    drawMyText (heading fonts) 10 19.4 "ACTIVITY DETAILS"
    drawRect 0.5 8 21.8 194 51.3
    drawHLine 0.1 8 31.0 194
    drawHLine 0.1 8 39.4 194
    drawHLine 0.1 8 48.8 194
    drawHLine 0.1 8 57.9 194
    drawMyText (label fonts)  10.0 27.7 "The activity will be held at:"
    drawMyText (label fonts) 119.4 27.7 "from:"
    drawMyText (label fonts) 163.8 27.7 "to:"
    drawMyText (label fonts)  10.0 36.6 "Leader-in-charge:"
    drawMyText (label fonts) 106.8 36.6 "Total cost of camp:"
    drawMyText (label fonts)  10.0 45.5 "Emergency contact:"
    drawMyText (label fonts) 106.8 45.5 "Deposit:"
    drawMyText (label fonts) 155.4 45.5 "Due:"
    drawMyText (label fonts)  10.0 54.8 "Phone:"
    drawMyText (label fonts) 106.8 54.8 "Balance:"
    drawMyText (label fonts) 155.4 54.8 "Due:"
    drawMyText (label fonts)  10.0 63.5 "Activities:"
    drawMyText (label fonts) 155.4 63.5 "Travel Arrangements:"
    drawMyText (info fonts)  55.0 27.7 (location activity)
    drawMyText (info fonts) 130.0 27.7 (dateStart activity)
    drawMyText (info fonts) 170.0 27.7 (dateEnd activity)
    drawMyText (info fonts)  42.0 36.6 (leader activity)
    drawMyText (info fonts) 140.0 36.6 (totalCost activity)
    drawMyText (info fonts)  45.0 45.5 (emergencyContact activity)
    drawMyText (info fonts) 124.0 45.5 (deposit activity)
    drawMyText (info fonts) 168.0 45.5 (depositDue activity)
    drawMyText (info fonts)  27.0 54.8 (emergencyPhone activity)
    drawMyText (info fonts) 124.0 54.8 (balance activity)
    drawMyText (info fonts) 168.0 54.8 (balanceDue activity)
    drawMyText (info fonts)  13.0 67.5 (activities activity)
    drawMyText (info fonts) 158.4 67.5 (travelArrangements activity)

    drawMyText (instructionL fonts) 10 79 "This section is to be retained by the parent or legal guardian."
    drawDottedHLine 15.7 83.1 182

    drawMyText (heading fonts) 10 91.9 "HEALTH FORM—PART B"
    drawRect 0.5 8 94 194 67.5
    drawHLine 0.1 8 102.6 194
    drawRect 0.1 106.3 104.2 6 5.9
    drawRect 0.1 138.0 104.2 6 5.9
    drawHLine 0.1 8 129.5 194
    drawHLine 0.1 8 144.3 194
    drawRect 0.1 106.3 145.6 6 5.9
    drawRect 0.1 138.0 145.6 6 5.9
    drawHLine 0.1 8 152.7 194
    drawVLine 0.1 104.9 31.0 26.9
    drawVLine 0.1 153.4 39.4 33.7
    drawMyText (label fonts)  10.0  99.6 "This form is to help the first aider in caring for the health of the participant. The contents will remain confidential."
    drawMyText (label fonts)  10.0 108.2 "Is your daughter taking ANY medication at present?"
    drawMyText (label fonts) 113.5 108.2 "YES"
    drawMyText (label fonts) 145.5 108.2 "NO"
    drawMyText (label fonts)  10.0 116.3 "If YES, please attach details and any management plan for any condition (such as asthma, epilepsy, etc.)"
    drawMyText (label fonts)  10.0 122.7 "All medication must be clearly labelled with name of participant, type of medication and dosage. The first aider will"
    drawMyText (label fonts)  10.0 126.7 "supervise the administration of all medication."
    drawMyText (label fonts)  10.0 135.1 "Any further information the first aider should know: "
    drawMyText (label fonts)  10.0 149.9 "Does your daughter wear contact lenses?"
    drawMyText (label fonts) 113.5 149.9 "YES"
    drawMyText (label fonts) 145.5 149.9 "NO"
    drawMyText (label fonts)  10.0 158.2 "Date of your daughter’s last tetanus immunisation:"
    drawMyText (info fonts) 13 139.1 (firstAiderInfo guide)
    drawMyText (info fonts) 92 158.2 (lastTetanusShot guide)

    drawMyText (instructionL fonts) 10 167.6 "This section is to be brought to the event."
    drawDottedHLine 15.7 172.7 182

    drawMyText (heading fonts) 10 180.5 "HEALTH FORM—PART A"
    drawRect 0.5 8 181.6 194 74.7
    drawVLine 0.1 51.3 181.6 74.7
    drawHLine 0.1 51.3 196.3 150.7
    drawHLine 0.1 51.3 211.1 150.7
    drawHLine 0.1 51.3 219.5 150.7
    drawHLine 0.1 51.3 234.2 150.7
    drawHLine 0.1 51.3 246.6 150.7
    drawRect 0.1  13.2 195.60 6 5.9
    drawRect 0.1  13.2 202.33 6 5.9
    drawRect 0.1  13.2 209.06 6 5.9
    drawRect 0.1  13.2 215.79 6 5.9
    drawRect 0.1  13.2 222.52 6 5.9
    drawRect 0.1  13.2 229.25 6 5.9
    drawRect 0.1  13.2 235.98 6 5.9
    drawRect 0.1  13.2 242.71 6 5.9
    drawRect 0.1  13.2 249.44 6 5.9
    drawRect 0.1 179.5 197.60 6 5.9
    drawRect 0.1 179.5 204.10 6 5.9
    drawRect 0.1 121.9 212.30 6 5.9
    drawRect 0.1 142.0 212.30 6 5.9
    drawRect 0.1 168.7 234.30 6 5.9
    drawRect 0.1 168.7 240.40 6 5.9
    drawMyText (label fonts)  10.0 186.90 "Does your daughter"
    drawMyText (label fonts)  10.0 190.90 "suffer from any of the"
    drawMyText (label fonts)  10.0 194.90 "following?"
    drawMyText (label fonts)  22.6 199.60 "Asthma"
    drawMyText (label fonts)  22.6 206.33 "Bed Wetting"
    drawMyText (label fonts)  22.6 213.06 "Diabetes"
    drawMyText (label fonts)  22.6 219.79 "Epilepsy"
    drawMyText (label fonts)  22.6 226.52 "Sleep Walking"
    drawMyText (label fonts)  22.6 233.25 "Fainting"
    drawMyText (label fonts)  22.6 239.98 "Hay Fever"
    drawMyText (label fonts)  22.6 246.71 "Nose Bleeds"
    drawMyText (label fonts)  22.6 253.44 "Severe Allergies"
    drawMyText (label fonts)  53.1 186.90 "Give details of any known allergies such as food, insect bites or medication:"
    drawMyText (label fonts)  53.1 201.70 "Does she have any disability or chronic illness or need any special health care?"
    drawMyText (label fonts) 188.0 201.70 "YES"
    drawMyText (label fonts) 188.0 208.20 "NO"
    drawMyText (label fonts)  53.1 208.00 "If YES, give details:"
    drawMyText (label fonts)  53.1 216.50 "Does she know about menstruation?"
    drawMyText (label fonts) 129.0 216.50 "YES"
    drawMyText (label fonts) 150.0 216.50 "NO"
    drawMyText (label fonts)  53.1 225.00 "Give any details of any special food requirements for medical, religious or other reasons:"
    drawMyText (label fonts)  53.1 239.80 "Do you give permission for your daughter to take paracetamol should,"
    drawMyText (label fonts)  53.1 243.80 "in the opinion of the first aider, it be required?"
    drawMyText (label fonts) 177.2 238.40 "YES"
    drawMyText (label fonts) 177.2 244.50 "NO"
    drawMyText (label fonts)  53.1 252.70 "If swimming or boating is listed as an activity, how far can your daughter swim?"
    drawMyText (info fonts)  56.1 190.9 (allergyDetails guide)
    drawMyText (info fonts)  88.0 208.0 (chronicIllnessDetails guide)
    drawMyText (info fonts)  56.1 229.0 (specialFoodRequirements guide)
    drawMyText (info fonts) 178.0 252.7 (swimmingDistance guide)

    drawRect 0.5 8 258.6 194 25.6
    drawHLine 0.1 8 267.2 194
    drawVLine 0.1 124.2 258.6 25.6
    drawHLine 0.1 124.2 275.6 77.8
    drawMyText (label fonts)  10.0 264.2 "Parent’s Name:"
    drawMyText (label fonts) 126.5 264.2 "Phone (BH):"
    drawMyText (label fonts)  10.0 272.6 "Address:"
    drawMyText (label fonts) 126.5 272.6 "Phone (AH):"
    drawMyText (label fonts)  10.0 281.2 "State:"
    drawMyText (label fonts)  75.7 281.2 "Postcode:"
    drawMyText (label fonts) 126.5 281.2 "Mobile:"
    drawMyText (info fonts)  37 264.2 (guardian_name guardian)
    drawMyText (info fonts) 149 264.2 (businessPhone guardian)
    drawMyText (info fonts)  28 272.6 (address guardian)
    drawMyText (info fonts) 149 272.6 (homePhone guardian)
    drawMyText (info fonts)  28 281.2 (state guardian)
    drawMyText (info fonts)  94 281.2 (postcode guardian)
    drawMyText (info fonts) 149 281.2 (mobilePhone guardian)

    drawMyText (footer fonts) 99.7 289.1 "2 of 2"
    drawMyText (footer fonts) 190.5 289.1 "2004"