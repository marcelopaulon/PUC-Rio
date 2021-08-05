calculadora <- function(val1, val2, oper) {
  if(oper == "+") {
    return(val1 + val2)
  }
  else if(oper == "-") {
    return(val1 - val2)
  }
  else if(oper == "/") {
    return(val1 / val2)
  }
  else if(oper == "*") {
    return(val1 * val2)
  }
  else {
    return("Invalid operator")
  }
}

# Tests:
calculadora(20,5,"+") == 25 # TRUE
calculadora(20,5,"-") == 15 # TRUE
calculadora(20,5,"/") == 4 # TRUE
calculadora(20,5,"*") == 100 # TRUE
calculadora(20,5,"A") == "Invalid operator" # TRUE
