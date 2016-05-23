module Adm27Page1 (
  drawPage1
) where

import Graphics.PDF
import Adm27Data
import Adm27Graphics
import Adm27Images

drawPage1 :: Activity -> Guide -> Guardian -> String -> PDF()
drawPage1 activity guide guardian today = do
  page <- addPage Nothing
  drawImage 177.0  40.0 jpegTrefoil  page
  drawImage  10.0  88.0 jpegScissors page
  drawImage  10.0 180.6 jpegScissors page
    
  drawChoice 54.2 125.6 77.6 125.6 (privateHealthCover guide) jpegTick page
  drawChoice 54.2 134.5 77.6 134.5 (ambulanceCover guide)     jpegTick page
 
  drawWithPage page $ do
    drawMyText (adm fonts) 10 24 "ADM.27"
    drawMyText (title fonts) 34.5 36.5 "ACTIVITY CONSENT FORM FOR YOUTH MEMBERS" 

    drawMyText (instructionL fonts) 10 46.5 "Please click the cursor inside the box and type or print clearly with a black pen" 

    drawMyText (heading fonts) 10 53.5 "ACTIVITY DETAILS"
    drawRect 0.5 8 55.7 194 19
    drawHLine 0.1 8 65.3 194
    drawVLine 0.1 104.9 55.7 19
    drawMyText (label fonts) 10 61.9 "Activity:"
    drawMyText (info fonts) 25 61.9 (activity_name activity)
    drawMyText (label fonts) 106.9 61.9 "Date of Activity:"
    drawMyText (info fonts) 135 61.9 (dateStart activity)
    drawMyText (label fonts) 10 71 "Name of Applicant:"
    drawMyText (info fonts) 45 71 (guide_name guide)
    drawMyText (label fonts) 106.9 71 "Unit:"
    drawMyText (info fonts) 120 71 (guide_unit guide)

    drawMyText (instructionS fonts) 10 78.5 "This section is to be retained by the parent or legal guardian. Please see the reverse of this form for further details."
    drawDottedHLine 15.7 85.5 182

    drawMyText (heading fonts) 10 94.5 "MEDICAL INFORMATION - This section is to be brought to the event"
    drawRect 0.5 8 96 194 49.5
    drawHLine 0.1 8 104.4 194
    drawHLine 0.1 8 118.9 194
    drawHLine 0.1 8 127.3 194
    drawHLine 0.1 8 135.9 194
    drawVLine 0.1 72.6 96 8.4
    drawVLine 0.1 137.2 96 8.4
    drawVLine 0.1 104.9 104.4 31.5
    drawVLine 0.1 72.6 135.9 9.6
    drawVLine 0.1 137.2 135.9 9.6
    drawMyText (label fonts) 10 101.5 "Name:"
    drawMyText (info fonts) 24 101.5 (guide_name guide)
    drawMyText (label fonts) 74.5 101.5 "Date of Birth:"
    drawMyText (info fonts) 100 101.5 (dob guide)
    drawMyText (label fonts) 139 101.5 "Unit:"
    drawMyText (info fonts) 149 101.5 (guide_unit guide)
    drawMyText (label fonts) 10 109.8 "Medicare Number:"
    drawMyText (info fonts) 43 109.8 (medicareNumber guide)
    drawMyText (label fonts) 106.9 109.8 "Address registered for Medicare:"
    drawMyText (info fonts) 110 115 (medicareAddress guide)
    drawMyText (label fonts) 10 116.1 "Applicant's Medicare Reference Number:"
    drawMyText (info fonts) 80 116.1 (medicareReference guide)
    drawMyText (label fonts) 10 124.6 "Private health cover:"
    drawRect 0.1 53.7 120.2 6 5.9
    drawMyText (label fonts) 62.7 124.6 "YES"
    drawRect 0.1 53.7 128.8 6 5.9
    drawMyText (label fonts) 85.1 124.6 "NO"
    drawMyText (label fonts) 106.9 124.6 "Name of fund:"
    drawMyText (info fonts) 134 124.6 (privateHealthFund guide)
    drawMyText (label fonts) 10 133.2 "Ambulance cover:"
    drawRect 0.1 77.1 120.2 6 5.9
    drawMyText (label fonts) 62.7 133.2 "YES"
    drawRect 0.1 77.1 128.8 6 5.9
    drawMyText (label fonts) 85.1 133.2 "NO"
    drawMyText (label fonts) 106.9 133.2 "Membership number:"
    drawMyText (info fonts) 145 133.2 (privateHealthNumber guide)
    drawMyText (label fonts) 10 142 "Emergency Contact:"
    drawMyText (info fonts) 44 142 (guardian_name guardian)
    drawMyText (label fonts) 74.7 142 "Phone:"
    drawMyText (info fonts) 88 142 (homePhone guardian)
    drawMyText (label fonts) 139.4 141.6 "Mobile:"
    drawMyText (info fonts) 153 141.6 (mobilePhone guardian)

    drawRect 0.5 8 148 194 22
    drawHLine 0.1 8 160.8 194
    drawVLine 0.1 137.2 160.8 9.2
    drawMyText (label fonts) 10 153.4 "I have completed the back of this form and to the best of my knowledge this information is correct and my daughter is in"
    drawMyText (label fonts) 10 157.7 "good health."
    drawMyText (label fonts) 10 166.4 "Signature:"
    drawMyText (label fonts) 100.8 166.4 "(Parent or Guardian)"
    drawMyText (label fonts) 139 166.4 "Date:"
    drawMyText (info fonts) 150 166.4 today

    drawDottedHLine 15.7 178.1 182

    drawMyText (heading fonts) 10 187  "PERMISSION TO ATTEND - This section is to be returned by:"
    drawRect 0.5 8 189.2 194 19
    drawHLine 0.1 8 198.6 194
    drawVLine 0.1 72.6 189.2 19
    drawVLine 0.1 137.2 189.2 19
    drawMyText (label fonts) 10 195.3 "Activity:"
    drawMyText (info fonts) 25 195.3 (activity_name activity)
    drawMyText (label fonts) 74.5 195.3 "Name of applicant:"
    drawMyText (info fonts) 105 195.3 (guide_name guide)
    drawMyText (label fonts) 139 195.3 "Date of Activity:"
    drawMyText (info fonts) 165 195.3 (dateStart activity)
    drawMyText (label fonts) 10 204.5 "Unit:"
    drawMyText (info fonts) 25 204.5 (guide_unit guide)
    drawMyText (label fonts) 74.5 204.5 "Membership Number:"
    drawMyText (info fonts) 112 204.5 (guideMembershipNumber guide)
    drawMyText (label fonts) 139 204.5 "Expiry Date:"
    drawMyText (info fonts) 165 204.5 (guideMembershipExpiry guide)

    drawMyText (legal fonts) 10 212.6 ("I, " ++ (guardian_name guardian) ++ " being parent/legal guardian of " ++ (guide_name guide) ++ " (full name) hereby apply")
    drawMyText (legal fonts) 10 216.1 "for my daughter to attend the above activity. If the application is accepted, to the best of my knowledge my daughter is fit to participate"
    drawMyText (legal fonts) 10 219.6 ("and has permission to take part in all activities except for " ++ (activityExceptions guide) ++ ".")
    drawMyText (legal fonts) 10 224.2 "I undertake that my daughter will attend this activity/event only if, to the best of my knowledge, she has not been in contact with any"
    drawMyText (legal fonts) 10 227.7 "infectious diseases in the three weeks prior to the activity/event."
    drawMyText (legal fonts) 10 232.3 "I acknowledge I have been informed that a copy of Guide Lines (publication containing the policy, organisation and rules of Girl Guides"
    drawMyText (legal fonts) 10 235.8 "Australia) is available for inspection at all Guide venues, that the sections related to program, camping, adventurous activities and"
    drawMyText (legal fonts) 10 239.3 "policies can be viewed on the Girl Guides Australia website www.girlguides.org.au and that I have been invited to read this publication"
    drawMyText (legal fonts) 10 243.9 "I authorise the Leader-in-charge to obtain first aid, medical, ambulance, dental assistance or treatment, including any anaesthetic or"
    drawMyText (legal fonts) 10 247.4 "blood transfusion, for my daughter in the event of any illness or accident. Note: All reasonable attempts to make contact with the"
    drawMyText (legal fonts) 10 250.9 "nominated 'emergency contact' will be made. I consent to the release of the health information on this form to any person who provides"
    drawMyText (legal fonts) 10 254.4 "medical treatment and care to the applicant whilst participating in these activities."
    drawMyText (legal fonts) 10 259.0 "I agree to pay for all expenses incurred in obtaining such medical aid and to reimburse the organisation for any expenses incurred."
    drawMyText (legal fonts) 10 263.6 "I have completed the back of this form and to the best of my knowledge the information is correct."

    drawRect 0.5 8 267 194 10
    drawVLine 0.1 86.1 267 10
    drawVLine 0.1 152.7 267 10
    drawMyText (label fonts) 10 273.3 "I enclose"
    drawMyText (info fonts) 27 273.3 (feeEnclosed activity)
    drawMyText (label fonts) 49.3 273.3 "as a full fee / deposit"
    drawMyText (label fonts) 88.1 273.3 "Signature:"
    drawMyText (label fonts) 154.7 273.3 "Date:"
    drawMyText (info fonts) 166 273.3 today

    drawMyText (footer fonts) 99.7 289.1 "1 of 2"
    drawMyText (footer fonts) 190.5 289.1 "2004" 

{-|
function printPageOne(doc, guide: IGuide, guardian: IGuardian, activity: IActivity) {

    doc.highlight(8.2, 161, 128.9, 8.7);
    doc.highlight(86.4, 267.4, 66, 9.1);
|-}