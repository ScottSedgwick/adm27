{-# LANGUAGE DeriveGeneric #-}
module Adm27Data (
    Config (..)
  , Activity (..)
  , Guide (..)
  , Guardian (..)
  , Fonts (..)
  , fonts
) where

import Graphics.PDF
import GHC.Generics
import Data.Yaml

data Config = Config { guardian :: String
                     , guide :: String
                     , activity :: Activity
                     } deriving (Eq, Show, Read, Generic)
instance FromJSON Config

data Activity = Activity { activity_name :: String
                         , dateStart :: String
                         , dateEnd :: String
                         , feeEnclosed :: String
                         , location :: String
                         , leader :: String
                         , emergencyContact :: String
                         , emergencyPhone :: String
                         , totalCost :: String
                         , deposit :: String
                         , depositDue :: String
                         , balance :: String
                         , balanceDue :: String
                         , activities :: String
                         , travelArrangements :: String 
                         } deriving (Eq, Show, Read, Generic)
instance FromJSON Activity

data Guide = Guide { guide_name :: String
                   , guide_unit :: String
                   , dob :: String
                   , medicareNumber :: String
                   , medicareReference :: String
                   , medicareAddress :: String
                   , privateHealthCover :: Bool
                   , privateHealthFund :: String
                   , privateHealthNumber :: String
                   , ambulanceCover :: Bool
                   , medicalEmergencyContact :: String
                   , medicalEmergencyPhone :: String
                   , medicalEmergencyMobile :: String
                   , guideMembershipNumber :: String
                   , guideMembershipExpiry :: String
                   , takingMedication :: Bool
                   , firstAiderInfo :: String
                   , contactLenses :: Bool
                   , lastTetanusShot :: String
                   , allergyDetails :: String
                   , chronicIllness :: Bool
                   , chronicIllnessDetails :: String
                   , knowsAboutMenstruation :: Bool
                   , specialFoodRequirements :: String
                   , canTakeParacetamol :: Bool
                   , swimmingDistance :: String
                   , sufferAsthma :: Bool
                   , sufferBedWetting :: Bool
                   , sufferDiabetes :: Bool
                   , sufferEpilepsy :: Bool
                   , sufferSleepwalking :: Bool
                   , sufferFainting :: Bool
                   , sufferHayFever :: Bool
                   , sufferNosebleeds :: Bool
                   , sufferSevereAllergies :: Bool
                   , activityExceptions :: String
                   }

data Guardian = Guardian { guardian_name :: String
                         , address :: String
                         , state :: String
                         , postcode :: String
                         , businessPhone :: String
                         , homePhone :: String
                         , mobilePhone :: String
                         }

data Fonts = Fonts { adm :: PDFFont
                   , title :: PDFFont
                   , heading :: PDFFont
                   , instructionL :: PDFFont
                   , instructionS :: PDFFont
                   , label :: PDFFont
                   , info :: PDFFont
                   , footer :: PDFFont
                   , legal :: PDFFont
                   }

fonts :: Fonts
fonts = Fonts { adm = PDFFont Helvetica_Bold 14
              , title = PDFFont Helvetica_Bold 16
              , heading = PDFFont Helvetica_Bold 13
              , instructionL = PDFFont Helvetica_Bold 11
              , instructionS = PDFFont Helvetica_Bold 8
              , label = PDFFont Helvetica 10
              , info = PDFFont Helvetica_Bold 10
              , footer = PDFFont Helvetica 12
              , legal = PDFFont Helvetica 9
              }  