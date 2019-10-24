{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module DRFBug where

import Control.DeepSeq
import Data.THGen.XML
import Data.THGen.XML.Internal
import Prelude hiding ((*), (+))
import Text.XML.Writer

-- | Used for codes in the AMADEUS code tables. Code Length is two
-- alphanumeric characters.
newtype XmlAMA_EDICodesetType_Length1to2
  = XmlAMA_EDICodesetType_Length1to2
  { unXmlAMA_EDICodesetType_Length1to2 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..3
newtype XmlAlphaNumericString_Length1To3
  = XmlAlphaNumericString_Length1To3
  { unXmlAlphaNumericString_Length1To3 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To identify the type of source.
"SourceTypeDetailsTypeI" =:= record Generator NoLens
  * "sourceQualifier1" [t|XmlAlphaNumericString_Length1To3|]
  * "sourceQualifier2" [t|XmlAlphaNumericString_Length1To3|]

-- | Format limitations: n..9
newtype XmlNumericInteger_Length1To9
  = XmlNumericInteger_Length1To9
  { unXmlNumericInteger_Length1To9 :: Integer
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..9
newtype XmlAlphaNumericString_Length1To9
  = XmlAlphaNumericString_Length1To9
  { unXmlAlphaNumericString_Length1To9 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To identify the originator of the travel request.
"OriginatorIdentificationDetailsTypeI" =:= record Generator NoLens
  * "originatorId" [t|XmlNumericInteger_Length1To9|]
  * "inHouseIdentification1" [t|XmlAlphaNumericString_Length1To9|]
  * "inHouseIdentification2" [t|XmlAlphaNumericString_Length1To9|]
  * "inHouseIdentification3" [t|XmlAlphaNumericString_Length1To9|]

-- | Format limitations: an..25
newtype XmlAlphaNumericString_Length1To25
  = XmlAlphaNumericString_Length1To25
  { unXmlAlphaNumericString_Length1To25 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..17
newtype XmlAlphaNumericString_Length1To17
  = XmlAlphaNumericString_Length1To17
  { unXmlAlphaNumericString_Length1To17 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To identify a location by code or name.
"LocationTypeI" =:= record Generator NoLens
  * "trueLocationId" [t|XmlAlphaNumericString_Length1To25|]
  * "trueLocation" [t|XmlAlphaNumericString_Length1To17|]

-- | Format limitations: an..35
newtype XmlAlphaNumericString_Length1To35
  = XmlAlphaNumericString_Length1To35
  { unXmlAlphaNumericString_Length1To35 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To specify additional originator and source information.
"AdditionalBusinessSourceInformationTypeI" =:= record Generator NoLens
  * "sourceType" [t|XmlSourceTypeDetailsTypeI|]
  * "originatorDetails" [t|XmlOriginatorIdentificationDetailsTypeI|]
  * "locationDetails" [t|XmlLocationTypeI|]
  * "countryCode" [t|XmlAlphaNumericString_Length1To3|]
  * "systemCode" [t|XmlAlphaNumericString_Length1To35|]

-- | Format limitations: an..12
newtype XmlAlphaNumericString_Length1To12
  = XmlAlphaNumericString_Length1To12
  { unXmlAlphaNumericString_Length1To12 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To identify equipment configuration, registration number, and cabin
-- facilities.
"AdditionalEquipmentInformationTypeI" =:= record Generator NoLens
  * "fittedConfigurationCode" [t|XmlAlphaNumericString_Length1To12|]
  * "defaultConfigurationCode" [t|XmlAlphaNumericString_Length1To12|]
  * "airlineDetails" [t|XmlAlphaNumericString_Length1To35|]
  * "code" [t|XmlAlphaNumericString_Length1To17|]
  * "characteristic" [t|XmlAlphaNumericString_Length1To3|]

-- | Format limitations: an..18
newtype XmlAlphaNumericString_Length1To18
  = XmlAlphaNumericString_Length1To18
  { unXmlAlphaNumericString_Length1To18 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | To specify the fare basis and ticket designator codes.
"AdditionalFareQualifierDetailsTypeI" =:= record Generator NoLens
  * "rateClass" [t|XmlAlphaNumericString_Length1To35|]
  * "commodityCategory" [t|XmlAlphaNumericString_Length1To18|]

-- | Format limitations: an1
newtype XmlAlphaNumericString_Length1To1
  = XmlAlphaNumericString_Length1To1
  { unXmlAlphaNumericString_Length1To1 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..10
newtype XmlAlphaNumericString_Length1To10
  = XmlAlphaNumericString_Length1To10
  { unXmlAlphaNumericString_Length1To10 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..20
newtype XmlAlphaNumericString_Length1To20
  = XmlAlphaNumericString_Length1To20
  { unXmlAlphaNumericString_Length1To20 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..6
newtype XmlAlphaNumericString_Length1To6
  = XmlAlphaNumericString_Length1To6
  { unXmlAlphaNumericString_Length1To6 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..7
newtype XmlAlphaNumericString_Length1To7
  = XmlAlphaNumericString_Length1To7
  { unXmlAlphaNumericString_Length1To7 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..70
newtype XmlAlphaNumericString_Length1To70
  = XmlAlphaNumericString_Length1To70
  { unXmlAlphaNumericString_Length1To70 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: an..8
newtype XmlAlphaNumericString_Length1To8
  = XmlAlphaNumericString_Length1To8
  { unXmlAlphaNumericString_Length1To8 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Format limitations: a1
newtype XmlAlphaString_Length1To1
  = XmlAlphaString_Length1To1
  { unXmlAlphaString_Length1To1 :: Text
  } deriving (Show, Eq, NFData, ToXML)

-- | Code or name to identify a company and any associated companies.
"CompanyIdentificationTypeI" =:= record Generator NoLens
  * "marketingCompany" [t|XmlAlphaNumericString_Length1To35|]
  * "operatingCompany" [t|XmlAlphaNumericString_Length1To35|]

-- | Format limitations: n..3
newtype XmlNumericInteger_Length1To3
  = XmlNumericInteger_Length1To3
  { unXmlNumericInteger_Length1To3 :: Integer
  } deriving (Show, Eq, NFData, ToXML)

-- | To identify the number of seats for a specific class of service.
"ConfigurationDetailsTypeI" =:= record Generator NoLens
  * "classDesignator" [t|XmlAlphaString_Length1To1|]
  * "numberOfSeats" [t|XmlNumericInteger_Length1To3|]
  * "characteristic" [t|XmlAlphaNumericString_Length1To17|]
