#!/usr/bin/env python
# coding=utf-8
saving = 250
currentValue = [175, 133, 109, 201, 97]
futureValue = [200, 125, 128, 228, 133]
# print(selectStock(saving,currentValue,futureValue))
profit = [0] * len(currentValue)
for i in range(len(currentValue)):
    profit[i] = futureValue[i] - currentValue[i]

md = [[0 for _ in range(len(currentValue))] for _ in range(saving+1)]
for i in range(1, saving+1):
    for j in range(len(currentValue)):
        if j==0:
            if i>=currentValue[j]:
                if profit[j] > md[i-1][j]:
                    md[i][j] = profit[j]
                else:
                    md[i][j] = md[i-1][j]
            else:
                md[i][j] = 0
        else:
            md[i][j]=md[i][j-1]
            if i > currentValue[j]:
                if md[i-currentValue[j]][j-1]+profit[j] > md[i][j]:
                    md[i][j] = md[i-currentValue[j]][j-1]+profit[j]
                if md[i-currentValue[j]][j]>md[i][j]:
                    md[i][j] = md[i-currentValue[j]][j]
print(md[saving][len(currentValue)-1])
