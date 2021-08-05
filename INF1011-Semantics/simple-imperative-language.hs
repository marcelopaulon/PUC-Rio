import Test.Tasty
import Test.Tasty.HUnit

import Data.List
import Data.Ord

main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [myTests]

data Cmd = CmdAsg Var Exp
         | CmdWhile Exp Cmd
         | CmdIf Exp Cmd Cmd
         | CmdSkip Cmd Cmd
         | CmdSeq Cmd Cmd
         
type Var = [Char]

data Exp = ExpAdd Exp Exp
         | ExpVar Var
         | ExpK Integer
         
evalExp::Exp->Mem->Integer
evalExp(ExpAdd e1 e2) mem = evalExp e1 mem + evalExp e2 mem
evalExp(ExpK i) _ = i
evalExp(ExpVar v) m = getVal m v
         
type Mem = Var->Integer

getVal::Mem->Var->Integer
getVal m v = m v
setVal::Mem->Var->Integer->Mem
setVal m var val = \x -> if var == x then val else m x
emptyMem::Mem
emptyMem = \_ -> 0

evalCmd::Cmd->Mem->Mem
evalCmd(CmdAsg v e) m = setVal m v (evalExp e m)

myTests = testGroup "tests"
  [ testCase "99 + 2" $
      (evalExp(ExpAdd (ExpK 99) (ExpK 2)) emptyMem) @?= 101

  , testCase "99" $
      (evalExp(ExpK 99) emptyMem) @?= 99
      
  , testCase "getVal(setVal(99))" $
      evalExp(ExpVar "teste") (evalCmd(CmdAsg "teste" (ExpK 99)) emptyMem) @?= 99
  ]
  
  