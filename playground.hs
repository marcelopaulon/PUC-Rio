data Nat = Zero 
         | Inc Nat
soma::Nat->Nat->Nat
soma Zero y = y
soma (Inc x) y = Inc(soma x y)

dec::Nat->Nat
dec Zero = Zero
dec (Inc(x)) = x

printNat Zero = "Z"
printNat (Inc x) = "Inc " ++ printNat x

sort1 [] = []
sort1 (x:xs) = sort1 (filter ((>=) x) xs) ++ (x:(sort1 (filter ((<) x) xs)))

printLista [] = "[]"
printLista (x:xs) = show x ++ ":" ++ printLista xs

main = print $ printLista $ sort1 [3,2,9,1,2,2,3,8]

--main = print $ printNat $ dec (Inc(Inc(Zero)))
