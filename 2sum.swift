// PROBLEM DESCRIPTION
// Given an array of integers, return indices of the two numbers such that they add up to a specific target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// Example:

// Given nums = [2, 7, 11, 15], target = 9,

// Because nums[0] + nums[1] = 2 + 7 = 9,
// return [0, 1].



// main function, takes a list of numbers and a target value and returns indeces where of the two values in the list that make up the sum
func twoSumHash(_ nums: [Int], _ target: Int) -> [Int] {
    
    let keys = insert(nums) // call to insert to make the hashtable
    var result: [Int] = [] // where we will store our result
    
    
    for i in nums{ // iterate through the given array to get the complement we need to find in the list
        let sum  = target - i
        if search(nums, keys, sum) == true { // search for this complement and see if the hashes are the same
            result.append(nums.firstIndex(of: i) ?? 0)
            result.append(nums.firstIndex(of: sum) ?? 0)
            break
        }else{
            continue
        }
    }

    print("twoSumHashResult")
    print(result)
    return result
}


func insert(_ nums: [Int]) -> [Int]{
    
    let tableSize = nums.count
    var array: [Int] = []
    var keys: [Int] = []
    
    for i in nums{
        //print(i.hashValue)
        let hashValue =  i % (tableSize + 3)
        keys.append(hashValue)
    }
    
    
//    print(array)
//    print(keys)
    return keys
    
}

func search(_ nums: [Int],_ keys: [Int], _ sum:Int) -> Bool{
    
    let tableSize = nums.count 
    let sumValue =  sum % (tableSize + 3) // the hashes for the sum and the thing previously stored in our list should be the same
    print(keys)
    print(sumValue)
    
    if(keys.contains(sumValue)){ // return if the the hashes match
        print("true")
        return true
    }
    else{
        return false
    }
    
}
