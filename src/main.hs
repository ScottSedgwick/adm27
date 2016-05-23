module Main where

import Adm27
import Adm27Data
import Adm27DB

import Data.Yaml
import Control.Applicative
import Options

data MainOptions = MainOptions
  { optInfile :: String
  , optOutfile :: String
  }

instance Options MainOptions where
  defineOptions = pure MainOptions
    <*> simpleOption "input" "input/data.yaml" "The input YAML file"
    <*> simpleOption "output" "pdfs/Adm27.pdf" "The output PDF file"

decodeConfig :: FilePath -> IO (Either ParseException Config)
decodeConfig f = decodeFileEither f

getGuardian :: String -> IO(Guardian)
getGuardian "scott"  = return scott
getGuardian "meagen" = return meagen
getGuardian s        = error $ "Invalid Guardian: " ++ s

getGuide :: String -> IO(Guide)
getGuide "phoebe" = return phoebe
getGuide "zoe"    = return zoe
getGuide s        = error $ "Invalid Guide: " ++ s

processConfig :: Either ParseException Config -> String -> IO()
processConfig (Left e)  _ = print $ prettyPrintParseException e
processConfig (Right a) f = do
  parent <- getGuardian (guardian a)
  girl   <- getGuide (guide a)
  adm27 parent girl f (activity a)

main :: IO()
main = runCommand $ \opts args -> do
  config <- decodeConfig (optInfile opts)
  processConfig config (optOutfile opts)
