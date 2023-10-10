import time
import random

def selectionSort(list):

    for i in range(len(list)):
        min_idx=i
        for j in range(i+1,len(list)):
            if list[min_idx]>list[j]:
                min_idx=j

        list[i],list[min_idx]=list[min_idx],list[i]

def bubbleSort(list):
    n=len(list)

    for i in range(n):

        for j in range(0,n-i-1):

            if list[j]>list[j+1]:
                list[j],list[j+1]=list[j+1],list[j]

def insertionSort(list):

    for i in range(1, len(list)):

        key = list[i]

        j=i-1
        while j >=0 and key<list[j]:
            list[j+1]=list[j]
            j -=1
        list[j+1]=key

list1=list(i for i in range(10000))

random.shuffle(list1)
a=time.time()
selectionSort(list1)
b=time.time()
time1=b-a

random.shuffle(list1)
a=time.time()
bubbleSort(list1)
b=time.time()
time2=b-a

random.shuffle(list1)
a=time.time()
insertionSort(list1)
b=time.time()
time3=b-a

random.shuffle(list1)
a=time.time()
list1.sort()
b=time.time()
time4=b-a

print(f"selectionSort({time1}), bubbleSort({time2}),\ninsertionSort({time3}), list.sort({time4})")

