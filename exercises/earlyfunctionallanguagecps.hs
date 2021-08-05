--------------------------------                                          -- 001
-- Early Functional Language CPS                                          -- 002
--------------------------------                                          -- 003
                                                                          -- 004
                                                                          -- 005
-- variables are just names                                               -- 006
type Var = String                                                         -- 007
                                                                          -- 008
-- values are integers and functions                                      -- 009
data Value = ValInt Int                                                   -- 010
           | ValFunc (Value -> Cmpt Value)                                -- 011
                                                                          -- 012
-- final results are strings (to be printed)                              -- 013
type Result = String                                                      -- 014
                                                                          -- 015
                                                                          -- 016
-- continuations                                                          -- 017
type K a = a -> Result                                                    -- 018
                                                                          -- 019
-- a computation gets a continuation and gives a result                   -- 020
type Cmpt a = K a -> Result                                               -- 021
                                                                          -- 022
-- an Environment maps variables to Values through continuations          -- 023
type Env = Var -> Cmpt Value                                              -- 024
                                                                          -- 025
                                                                          -- 026
-- auxiliary function to map Values to Booleans                           -- 027
isTrue :: Value -> Bool                                                   -- 028
isTrue (ValInt i) = (i /= 0)                                              -- 029
                                                                          -- 030
                                                                          -- 031
-- An empty Environment                                                   -- 032
emptyEnv :: Env                                                           -- 033
emptyEnv v k = ("undefined variable " ++ v)                               -- 034
                                                                          -- 035
                                                                          -- 036
-- bind a new value in an environment                                     -- 037
bind :: Var -> Value -> Env -> Env                                        -- 038
bind var val env = \v k -> if (var == v) then (k val) else (env v k)      -- 039
                                                                          -- 040
                                                                          -- 041
-- executes a binary operation on computations                            -- 042
up2 :: (Value -> Value -> Cmpt Value) ->                                  -- 043
         (Cmpt Value -> Cmpt Value -> Cmpt Value)                         -- 044
up2 op c1 c2 k = c1 (\v1 -> c2 (\v2 -> op v1 v2 k))                       -- 045
                                                                          -- 046
-- executes an integer operation on values                                -- 047
arith :: (Int -> Int -> Int) -> (Value -> Value -> Cmpt Value)            -- 048
arith op (ValInt i1) (ValInt i2) k = k (ValInt (op i1 i2))                -- 049
arith _ _ _ _ = "binary operation over non-int value"                     -- 050
                                                                          -- 051
                                                                          -- 052
-- executes an integer operation on computations                          -- 053
binOp :: (Int -> Int -> Int) -> (Cmpt Value -> Cmpt Value -> Cmpt Value)  -- 054
binOp op = up2 (arith op)                                                 -- 055
                                                                          -- 056
                                                                          -- 057
----------------------------------------------------------------------    -- 058
-- Abstract Syntax Tree for Expressions                                   -- 059
data Exp = ExpK Int              -- constants                             -- 060
         | ExpVar Var            -- variables                             -- 061
         | ExpAdd Exp Exp        -- e1 + e2                               -- 062
         | ExpSub Exp Exp        -- e1 - e2                               -- 063
         | ExpMul Exp Exp        -- e1 * e2                               -- 064
         | ExpDiv Exp Exp        -- e1 / e2                               -- 065
         | ExpIf Exp Exp Exp     -- if e1 then e2 else e3                 -- 066
         | ExpApp Exp Exp        -- e1 e2                                 -- 067
         | ExpLambda Var Exp     -- \x -> e                               -- 068
         | ExpLet Var Var Exp Exp        -- letrec x=(\x'->e') in e       -- 069
                                                                          -- 070
-- creates a closure in given environment                                 -- 071
closure :: Var -> (Env -> Cmpt Value) -> Env -> Value                     -- 072
closure v e env = ValFunc (\x k' -> e (bind v x env) k')                  -- 073
                                                                          -- 074
-- Evaluates an expression in a given environment                         -- 075
-- with a given continuation                                              -- 076
evalExp :: Exp -> Env -> Cmpt Value                                       -- 077
                                                                          -- 078
evalExp (ExpK i) env k = k (ValInt i)                                     -- 079
evalExp (ExpVar v) env k = env v k                                        -- 080
evalExp (ExpAdd e1 e2) env k =                                            -- 081
            binOp (+) (evalExp e1 env) (evalExp e2 env) k                 -- 082
evalExp (ExpSub e1 e2) env k =                                            -- 083
            binOp (-) (evalExp e1 env) (evalExp e2 env) k                 -- 084
evalExp (ExpMul e1 e2) env k =                                            -- 085
            binOp (*) (evalExp e1 env) (evalExp e2 env) k                 -- 086
evalExp (ExpDiv e1 e2) env k =                                            -- 087
            binOp div (evalExp e1 env) (evalExp e2 env) k                 -- 088
                                                                          -- 089
evalExp (ExpIf e1 e2 e3) env k = evalExp e1 env k'                        -- 090
  where k' (ValInt 0) = evalExp e3 env k                                  -- 091
        k' (ValInt _) = evalExp e2 env k                                  -- 092
        k' _ = "invalid value for 'if'"                                   -- 093
                                                                          -- 094
evalExp (ExpApp e1 e2) env k = up2 app (evalExp e1 env) (evalExp e2 env) k-- 095
  where app (ValFunc f) v2 k = f v2 k                                     -- 096
        app _ _ _ = "attempt to call a non-function value"                -- 097
                                                                          -- 098
evalExp (ExpLambda v e) env k = k (closure v (evalExp e) env)             -- 099
                                                                          -- 100
evalExp (ExpLet v v' e' e) env k = evalExp e env' k                       -- 101
  where env' = bind v (closure v' (evalExp e') env') env                  -- 102
                                                                          -- 103
                                                                          -- 104
----------------------------------------------------------------------    -- 105
                                                                          -- 106
                                                                          -- 107
----------------------------------------------------------------------    -- 108
-- some examples                                                          -- 109
                                                                          -- 110
-- (34 + 52) or 0                                                         -- 111
exp1 = ExpIf (ExpAdd (ExpK 34) (ExpK 52)) (ExpK 43) (ExpK 4)              -- 112
                                                                          -- 113
f1 = ExpLambda "x" (ExpApp (ExpVar "x") (ExpVar "x"))                     -- 114
f2 = ExpApp f1 f1                                                         -- 115
                                                                          -- 116
f3 = ExpApp (ExpLambda "x" (ExpK 3)) f2                                   -- 117
                                                                          -- 118
fat4 = ExpLet "f"                                                         -- 119
              "x"                                                         -- 120
           (ExpIf (ExpVar "x")                                            -- 121
                  (ExpMul (ExpVar "x")                                    -- 122
                          (ExpApp (ExpVar "f")                            -- 123
                                  (ExpSub (ExpVar "x") (ExpK 1))))        -- 124
                  (ExpK 1))                                               -- 125
        (ExpApp (ExpVar "f") (ExpK 5))                                    -- 126
                                                                          -- 127
                                                                          -- 128
                                                                          -- 129
-- code to show the final value of an expression                          -- 130
main :: IO ()                                                             -- 131
main = print (evalExp fat4 emptyEnv k)                                    -- 132
  where k x = case x of                                                   -- 133
                ValInt i  -> show i                                       -- 134
                ValFunc _ -> "function"                                   -- 135
                                                                          -- 136