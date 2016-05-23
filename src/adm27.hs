module Adm27 (
  adm27
) where

import Data.Time.Clock
import Data.Time.Calendar
import Graphics.PDF
import Text.Printf
import Adm27Data
import Adm27Page1
import Adm27Page2
import qualified Data.ByteString.Lazy as B

date :: IO (Integer,Int,Int) -- :: (year,month,day)
date = getCurrentTime >>= return . toGregorian . utctDay

adm27 :: Guardian -> Guide -> String -> Activity -> IO()
adm27 guardian guide pdfFileName activity = do

  (y,m,d) <- date
  let today = printf "%d / %d / %d" d m y
  
  bytestring <- pdfByteString standardDocInfo (PDFRect 0 0 595 842) $ do
    drawPage1 activity guide guardian today
    drawPage2 activity guide guardian
  B.writeFile pdfFileName bytestring