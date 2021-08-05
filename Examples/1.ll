
  define i32 @a() #0 {
      %t1 = alloca i32
    %t2 = alloca i32
    store i32 1, i32* %t2
    %t3 = load i32* %t2
    store i32 %t3, i32* %t1
        %t4 = alloca i32
        %t5 = alloca i32
      %t6 = alloca i32
      store i32 55, i32* %t6
      %t7 = load i32* %t6
      store i32 %t7, i32* %t4
      %t8 = alloca i32
      store i32 2, i32* %t8
      %t9 = load i32* %t8
      store i32 %t9, i32* %t5
      %t11 = load i32* %t4
      %t12 = load i32* %t5
      %t10 = sdiv i32 %t11, %t12
      ret i32 %t10
      }
