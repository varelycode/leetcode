# This is a sample Python script.

# Press ⇧F10 to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings.
import math

def twoSum(nums, target):

    sum = 0
    list = []
    temp = len(nums) * 1.3
    size = math.ceil(temp)
    dict_values, dict_indices = setTable(nums, target, size)

    for x in dict_values:
        sum = target - x # 9 - 2 = 7
        print("size:", size)
        hashValue = sum % size # 7 mod 3  = 1
        hashValue2 = x % size # 2 mod 3 = 2
        print("hasValue of x:", hashValue)
        print("hasValue2 of x:", hashValue2)
        try:
            if dict_values.get(hashValue):
                if dict_indices.get(hashValue) == dict_indices.get(hashValue2) and dict_values.get(hashValue) != dict_values.get(hashValue2 + 1):
                    return list
                elif dict_indices.get(hashValue) == dict_indices.get(hashValue2) and dict_values.get(hashValue) == dict_values.get(hashValue2 + 1):
                    list.append(dict_indices[hashValue2 + 1])
                    list.append(dict_indices[hashValue])
                    return list
                else:
                    list.append(dict_indices[hashValue2])
                    list.append(dict_indices[hashValue])
                    return list
            else:
                return list
        except:
            print("an exception has occured")

def setTable(nums, target, size):
    table = dict()
    table2 = dict()
    for index, number in enumerate(nums):
        hashValue = number % size
        print(hashValue)
        while table.get(hashValue):
            hashValue += 1
        table[hashValue] = number
        table2[hashValue] = index

    print("table1", table)
    print("table2", table2)
    return table, table2

def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press ⌘F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print_hi('PyCharm')
    result = twoSum([3,2,3],6)
    if not result:
        print("No values that sum to target")
    print(result)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
