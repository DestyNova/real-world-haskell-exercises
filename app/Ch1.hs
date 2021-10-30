module Ch1 where

main = interact wordCount
    -- Q3
    -- where wordCount input = show (sum $ map (length . words) (lines input)) ++ "\n"
    -- Q4
    where wordCount input = show (length input) ++ "\n"
