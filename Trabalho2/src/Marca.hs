{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}
module Marca where

import Data.Aeson 
import Control.Applicative 
import Control.Monad
import GHC.Generics
import Data.Text	

data Marca = Marca {  id :: Int
					, key :: !Text 
					, fipe_name :: !Text
					, name :: !Text
					} deriving (Show, Generic)

instance FromJSON Marca	

instance ToJSON Marca

instance Eq Marca where
	(Marca id _ _ _) == (Marca id2 _ _ _) =  id == id2

--instance FromJSON Marca where
--	parseJSON (Object v) = 
--		Marca <$> v .: "key" 
--			  <*> v .: "id" 
--			  <*> v .: "fipe_name" 
--			  <*> v .: "name"
--	parseJSON _ = mzero

--instance ToJSON Marca where
--	toJSON (Marca id key fipe_name name) = 
--		object["id" .= name, "key" .= key, "fipe_name" .= fipe_name, "name" .= name] 
