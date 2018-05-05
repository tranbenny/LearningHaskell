main :: IO()
main = putStrLn (greet "World")

greeting = "Hello"
greet who = "Hello, " ++ who

add :: Int -> Int -> Int 
add a b = a + b