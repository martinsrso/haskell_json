module Link where

data Link = Link { body:: String
				 , param1:: String
				 , param2:: String
				 , param3:: String
				 , param4:: String 
				 } deriving (Show)

base = "http://fipeapi.appspot.com/api/1/carros/"

marca = base ++ "marcas.json"
