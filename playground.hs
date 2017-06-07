data Nat = Zero
         | Inc Nat
soma::Nat->Nat->Nat
soma Zero y = y
soma (Inc x) y = Inc(soma x y)

dec::Nat->Nat
dec Zero = Zero
dec (Inc(x)) = x

printNat::Nat->String
printNat Zero = "Z"
printNat (Inc x) = "Inc " ++ printNat x

sort1 [] = []
sort1 (x:xs) = sort1 (filter ((>=) x) xs) ++ (x:(sort1 (filter ((<) x) xs)))

printList::[Int]->[Char]
printList [] = "[]"
printList (x:xs) = show x ++ ":" ++ printList xs

main::IO ()
main = (print $ printList $ sort1 [3,2,9,1,2,2,3,8]) >> -- this is equivalent to `... >>= \_ -> ...`
       (print $ printNat $ dec (Inc(Inc(Zero))))
