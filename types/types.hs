-- Types: synonyms 
type Count = Int 

processString :: [Char] -> Count 
processString = undefined 

-- algebraic data types example
data Compass = North | South | East | West 
	deriving (Eq, Ord, Enum, Show)
-- instance Show Compass where 
-- 	show North = "North"
-- 	show South = "South"
-- 	show East = "East"
-- 	show West = "West"

-- instance Eq Compass where 
-- 	North == North = True


data Expression = Number Int 
				| Add Expression Expression
				| Subtract Expression Expression
				deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

newHead :: [a] -> a
newHead [] = error "empty list"
newHead (x:xs) = x


newTail :: [a] -> a
newTail [] = error "empty list"
newTail [x] = x
newTail (x:xs) = xs