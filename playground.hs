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

main = print $ printNat $ dec (Inc(Inc(Zero)))
