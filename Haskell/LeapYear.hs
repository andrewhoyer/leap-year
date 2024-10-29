isLeapYear :: Integer -> Bool
isLeapYear year
    | year `mod` 400 == 0 = True
    | year `mod` 100 == 0 = False
    | year `mod` 4 == 0   = True
    | otherwise           = False

formatResult :: Integer -> String
formatResult year = "Is " ++ show year ++ " a leap year? " ++ show (isLeapYear year)

main :: IO ()
main = do
    let years = [1900, 2000, 2023, 2024]
    mapM_ (putStrLn . formatResult) years