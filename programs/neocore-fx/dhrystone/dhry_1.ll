; ModuleID = 'programs/neocore-fx/dhrystone/dhry_1.c'
source_filename = "programs/neocore-fx/dhrystone/dhry_1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx26.0.0"

%struct.record = type { ptr, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }

@Reg = global i32 0, align 4
@Next_Ptr_Glob = common global ptr null, align 8
@Ptr_Glob = common global ptr null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Dhrystone Benchmark, Version 2.1 (Language: C)\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Program compiled with 'register' attribute\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Program compiled without 'register' attribute\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Execution starts, %d runs through Dhrystone\0A\00", align 1
@Begin_Time = common global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 4
@Ch_2_Glob = common global i8 0, align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@Int_Glob = common global i32 0, align 4
@End_Time = common global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Execution ends\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"Final values of the variables used in the benchmark:\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Int_Glob:            %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"        should be:   %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Bool_Glob:           %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Ch_1_Glob:           %c\0A\00", align 1
@Ch_1_Glob = common global i8 0, align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"        should be:   %c\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Ch_2_Glob:           %c\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Arr_1_Glob[8]:       %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Arr_2_Glob[8][7]:    %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"        should be:   Number_Of_Runs + 10\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Ptr_Glob->\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"  Ptr_Comp:          %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"        should be:   (implementation-dependent)\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"  Discr:             %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"  Enum_Comp:         %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"  Int_Comp:          %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"  Str_Comp:          %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, SOME STRING\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Next_Ptr_Glob->\0A\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"        should be:   (implementation-dependent), same as above\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Int_1_Loc:           %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Int_2_Loc:           %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Int_3_Loc:           %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Enum_Loc:            %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Str_1_Loc:           %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Str_2_Loc:           %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\0A\00", align 1
@User_Time = common global i64 0, align 8
@.str.38 = private unnamed_addr constant [54 x i8] c"Measured time too small to obtain meaningful results\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Please increase number of runs\0A\00", align 1
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4
@.str.40 = private unnamed_addr constant [45 x i8] c"Microseconds for one run through Dhrystone: \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Dhrystones per Second:                      \00", align 1

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 1
  %8 = alloca [31 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %11 = call ptr @malloc(i64 noundef 56)
  store ptr %11, ptr @Next_Ptr_Glob, align 8
  %12 = call ptr @malloc(i64 noundef 56)
  store ptr %12, ptr @Ptr_Glob, align 8
  %13 = load ptr, ptr @Next_Ptr_Glob, align 8
  %14 = load ptr, ptr @Ptr_Glob, align 8
  %15 = getelementptr inbounds %struct.record, ptr %14, i32 0, i32 0
  store ptr %13, ptr %15, align 8
  %16 = load ptr, ptr @Ptr_Glob, align 8
  %17 = getelementptr inbounds %struct.record, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 8
  %18 = load ptr, ptr @Ptr_Glob, align 8
  %19 = getelementptr inbounds %struct.record, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 0
  store i32 2, ptr %20, align 4
  %21 = load ptr, ptr @Ptr_Glob, align 8
  %22 = getelementptr inbounds %struct.record, ptr %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  store i32 40, ptr %23, align 4
  %24 = load ptr, ptr @Ptr_Glob, align 8
  %25 = getelementptr inbounds %struct.record, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 2
  %27 = getelementptr inbounds [31 x i8], ptr %26, i64 0, i64 0
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef @.str) #4
  %29 = getelementptr inbounds [31 x i8], ptr %7, i64 0, i64 0
  %30 = call ptr @strcpy(ptr noundef %29, ptr noundef @.str.1) #4
  store i32 10, ptr getelementptr inbounds ([50 x i32], ptr getelementptr inbounds ([50 x [50 x i32]], ptr @Arr_2_Glob, i64 0, i64 8), i64 0, i64 7), align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %34 = load i32, ptr @Reg, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %42

39:                                               ; preds = %0
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %42

42:                                               ; preds = %39, %36
  store i32 2000, ptr %10, align 4
  %43 = load i32, ptr %10, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %43)
  %45 = call i64 @time(ptr noundef null)
  store i64 %45, ptr @Begin_Time, align 8
  store i32 1, ptr %9, align 4
  br label %46

46:                                               ; preds = %117, %42
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr %10, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %120

50:                                               ; preds = %46
  %51 = call i32 @Proc_5()
  %52 = call i32 @Proc_4()
  store i32 2, ptr %2, align 4
  store i32 3, ptr %3, align 4
  %53 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %54 = call ptr @strcpy(ptr noundef %53, ptr noundef @.str.7) #4
  store i32 1, ptr %6, align 4
  %55 = getelementptr inbounds [31 x i8], ptr %7, i64 0, i64 0
  %56 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %57 = call i32 @Func_2(ptr noundef %55, ptr noundef %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, ptr @Bool_Glob, align 4
  br label %61

61:                                               ; preds = %65, %50
  %62 = load i32, ptr %2, align 4
  %63 = load i32, ptr %3, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, ptr %2, align 4
  %67 = mul nsw i32 5, %66
  %68 = load i32, ptr %3, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, ptr %4, align 4
  %70 = load i32, ptr %2, align 4
  %71 = load i32, ptr %3, align 4
  %72 = call i32 @Proc_7(i32 noundef %70, i32 noundef %71, ptr noundef %4)
  %73 = load i32, ptr %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %2, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, ptr %2, align 4
  %77 = load i32, ptr %4, align 4
  %78 = call i32 @Proc_8(ptr noundef @Arr_1_Glob, ptr noundef @Arr_2_Glob, i32 noundef %76, i32 noundef %77)
  %79 = load ptr, ptr @Ptr_Glob, align 8
  %80 = call i32 @Proc_1(ptr noundef %79)
  store i8 65, ptr %5, align 1
  br label %81

81:                                               ; preds = %100, %75
  %82 = load i8, ptr %5, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8, ptr @Ch_2_Glob, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %83, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i32, ptr %6, align 4
  %89 = load i8, ptr %5, align 1
  %90 = sext i8 %89 to i32
  %91 = call i32 @Func_1(i32 noundef %90, i32 noundef 67)
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = call i32 @Proc_6(i32 noundef 0, ptr noundef %6)
  %95 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %96 = call ptr @strcpy(ptr noundef %95, ptr noundef @.str.8) #4
  %97 = load i32, ptr %9, align 4
  store i32 %97, ptr %3, align 4
  %98 = load i32, ptr %9, align 4
  store i32 %98, ptr @Int_Glob, align 4
  br label %99

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %99
  %101 = load i8, ptr %5, align 1
  %102 = add i8 %101, 1
  store i8 %102, ptr %5, align 1
  br label %81

103:                                              ; preds = %81
  %104 = load i32, ptr %3, align 4
  %105 = load i32, ptr %2, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, ptr %3, align 4
  %107 = load i32, ptr %3, align 4
  %108 = load i32, ptr %4, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, ptr %2, align 4
  %110 = load i32, ptr %3, align 4
  %111 = load i32, ptr %4, align 4
  %112 = sub nsw i32 %110, %111
  %113 = mul nsw i32 7, %112
  %114 = load i32, ptr %2, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, ptr %3, align 4
  %116 = call i32 @Proc_2(ptr noundef %2)
  br label %117

117:                                              ; preds = %103
  %118 = load i32, ptr %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %9, align 4
  br label %46

120:                                              ; preds = %46
  %121 = call i64 @time(ptr noundef null)
  store i64 %121, ptr @End_Time, align 8
  %122 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %123 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %124 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %126 = load i32, ptr @Int_Glob, align 4
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %126)
  %128 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 5)
  %129 = load i32, ptr @Bool_Glob, align 4
  %130 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %129)
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 1)
  %132 = load i8, ptr @Ch_1_Glob, align 1
  %133 = sext i8 %132 to i32
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %133)
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef 65)
  %136 = load i8, ptr @Ch_2_Glob, align 1
  %137 = sext i8 %136 to i32
  %138 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %137)
  %139 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef 66)
  %140 = load i32, ptr getelementptr inbounds ([50 x i32], ptr @Arr_1_Glob, i64 0, i64 8), align 4
  %141 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i32 noundef %140)
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 7)
  %143 = load i32, ptr getelementptr inbounds ([50 x i32], ptr getelementptr inbounds ([50 x [50 x i32]], ptr @Arr_2_Glob, i64 0, i64 8), i64 0, i64 7), align 4
  %144 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %143)
  %145 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  %147 = load ptr, ptr @Ptr_Glob, align 8
  %148 = getelementptr inbounds %struct.record, ptr %147, i32 0, i32 0
  %149 = load ptr, ptr %148, align 8
  %150 = ptrtoint ptr %149 to i32
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %150)
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %153 = load ptr, ptr @Ptr_Glob, align 8
  %154 = getelementptr inbounds %struct.record, ptr %153, i32 0, i32 1
  %155 = load i32, ptr %154, align 8
  %156 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, i32 noundef %155)
  %157 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 0)
  %158 = load ptr, ptr @Ptr_Glob, align 8
  %159 = getelementptr inbounds %struct.record, ptr %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.anon, ptr %159, i32 0, i32 0
  %161 = load i32, ptr %160, align 4
  %162 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, i32 noundef %161)
  %163 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 2)
  %164 = load ptr, ptr @Ptr_Glob, align 8
  %165 = getelementptr inbounds %struct.record, ptr %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.anon, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef %167)
  %169 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 17)
  %170 = load ptr, ptr @Ptr_Glob, align 8
  %171 = getelementptr inbounds %struct.record, ptr %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.anon, ptr %171, i32 0, i32 2
  %173 = getelementptr inbounds [31 x i8], ptr %172, i64 0, i64 0
  %174 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %173)
  %175 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  %176 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  %177 = load ptr, ptr @Next_Ptr_Glob, align 8
  %178 = getelementptr inbounds %struct.record, ptr %177, i32 0, i32 0
  %179 = load ptr, ptr %178, align 8
  %180 = ptrtoint ptr %179 to i32
  %181 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %180)
  %182 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %183 = load ptr, ptr @Next_Ptr_Glob, align 8
  %184 = getelementptr inbounds %struct.record, ptr %183, i32 0, i32 1
  %185 = load i32, ptr %184, align 8
  %186 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, i32 noundef %185)
  %187 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 0)
  %188 = load ptr, ptr @Next_Ptr_Glob, align 8
  %189 = getelementptr inbounds %struct.record, ptr %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.anon, ptr %189, i32 0, i32 0
  %191 = load i32, ptr %190, align 4
  %192 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, i32 noundef %191)
  %193 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 1)
  %194 = load ptr, ptr @Next_Ptr_Glob, align 8
  %195 = getelementptr inbounds %struct.record, ptr %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.anon, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = call i32 (ptr, ...) @printf(ptr noundef @.str.25, i32 noundef %197)
  %199 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 18)
  %200 = load ptr, ptr @Next_Ptr_Glob, align 8
  %201 = getelementptr inbounds %struct.record, ptr %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.anon, ptr %201, i32 0, i32 2
  %203 = getelementptr inbounds [31 x i8], ptr %202, i64 0, i64 0
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %203)
  %205 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  %206 = load i32, ptr %2, align 4
  %207 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, i32 noundef %206)
  %208 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 5)
  %209 = load i32, ptr %3, align 4
  %210 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, i32 noundef %209)
  %211 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 13)
  %212 = load i32, ptr %4, align 4
  %213 = call i32 (ptr, ...) @printf(ptr noundef @.str.32, i32 noundef %212)
  %214 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 7)
  %215 = load i32, ptr %6, align 4
  %216 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, i32 noundef %215)
  %217 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef 1)
  %218 = getelementptr inbounds [31 x i8], ptr %7, i64 0, i64 0
  %219 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef %218)
  %220 = call i32 (ptr, ...) @printf(ptr noundef @.str.35)
  %221 = getelementptr inbounds [31 x i8], ptr %8, i64 0, i64 0
  %222 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %221)
  %223 = call i32 (ptr, ...) @printf(ptr noundef @.str.37)
  %224 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %225 = load i64, ptr @End_Time, align 8
  %226 = load i64, ptr @Begin_Time, align 8
  %227 = sub nsw i64 %225, %226
  store i64 %227, ptr @User_Time, align 8
  %228 = load i64, ptr @User_Time, align 8
  %229 = icmp slt i64 %228, 2
  br i1 %229, label %230, label %234

230:                                              ; preds = %120
  %231 = call i32 (ptr, ...) @printf(ptr noundef @.str.38)
  %232 = call i32 (ptr, ...) @printf(ptr noundef @.str.39)
  %233 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %255

234:                                              ; preds = %120
  %235 = load i64, ptr @User_Time, align 8
  %236 = sitofp i64 %235 to float
  %237 = fmul float %236, 1.000000e+06
  %238 = load i32, ptr %10, align 4
  %239 = sitofp i32 %238 to float
  %240 = fdiv float %237, %239
  store float %240, ptr @Microseconds, align 4
  %241 = load i32, ptr %10, align 4
  %242 = sitofp i32 %241 to float
  %243 = load i64, ptr @User_Time, align 8
  %244 = sitofp i64 %243 to float
  %245 = fdiv float %242, %244
  store float %245, ptr @Dhrystones_Per_Second, align 4
  %246 = call i32 (ptr, ...) @printf(ptr noundef @.str.40)
  %247 = load float, ptr @Microseconds, align 4
  %248 = fptosi float %247 to i32
  %249 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %248)
  %250 = call i32 (ptr, ...) @printf(ptr noundef @.str.42)
  %251 = load float, ptr @Dhrystones_Per_Second, align 4
  %252 = fptosi float %251 to i32
  %253 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, i32 noundef %252)
  %254 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %255

255:                                              ; preds = %234, %230
  %256 = load i32, ptr %1, align 4
  ret i32 %256
}

declare ptr @malloc(...) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #1

declare i64 @time(...) #1

declare i32 @Func_2(...) #1

declare i32 @Proc_7(...) #1

declare i32 @Proc_8(...) #1

declare i32 @Func_1(...) #1

declare i32 @Proc_6(...) #1

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @Proc_1(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.record, ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.record, ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr @Ptr_Glob, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 56, i1 false)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.record, ptr %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  store i32 5, ptr %14, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.record, ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.record, ptr %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  store i32 %18, ptr %21, align 4
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.record, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.record, ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.record, ptr %27, i32 0, i32 0
  %29 = call i32 @Proc_3(ptr noundef %28)
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.record, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %1
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.record, ptr %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1
  store i32 6, ptr %37, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.record, ptr %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.record, ptr %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 0
  %45 = call i32 @Proc_6(i32 noundef %41, ptr noundef %44)
  %46 = load ptr, ptr @Ptr_Glob, align 8
  %47 = getelementptr inbounds %struct.record, ptr %46, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.record, ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds %struct.record, ptr %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.anon, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.record, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.anon, ptr %56, i32 0, i32 1
  %58 = call i32 @Proc_7(i32 noundef %54, i32 noundef 10, ptr noundef %57)
  br label %64

59:                                               ; preds = %1
  %60 = load ptr, ptr %3, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.record, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %63, i64 56, i1 false)
  br label %64

64:                                               ; preds = %59, %34
  %65 = load i32, ptr %2, align 4
  ret i32 %65
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @Proc_2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, ptr %4, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i8, ptr @Ch_1_Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, ptr %4, align 4
  %16 = load i32, ptr %4, align 4
  %17 = load i32, ptr @Int_Glob, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load ptr, ptr %3, align 8
  store i32 %18, ptr %19, align 4
  store i32 0, ptr %5, align 4
  br label %20

20:                                               ; preds = %13, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %9, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @Proc_3(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr @Ptr_Glob, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6, %1
  %12 = load i32, ptr @Int_Glob, align 4
  %13 = load ptr, ptr @Ptr_Glob, align 8
  %14 = getelementptr inbounds %struct.record, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %16 = call i32 @Proc_7(i32 noundef 10, i32 noundef %12, ptr noundef %15)
  %17 = load i32, ptr %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @Proc_4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, ptr @Ch_1_Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr @Bool_Glob, align 4
  %9 = or i32 %7, %8
  store i32 %9, ptr @Bool_Glob, align 4
  store i8 66, ptr @Ch_2_Glob, align 1
  %10 = load i32, ptr %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @Proc_5() #0 {
  %1 = alloca i32, align 4
  store i8 65, ptr @Ch_1_Glob, align 1
  store i32 0, ptr @Bool_Glob, align 4
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable(sync)
define i32 @memcpy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, ptr %7, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %7, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %14, ptr %6, align 8
  %15 = load i8, ptr %13, align 1
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %17, ptr %5, align 8
  store i8 %15, ptr %16, align 1
  br label %8

18:                                               ; preds = %8
  %19 = load i32, ptr %4, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.4.4.1)"}
