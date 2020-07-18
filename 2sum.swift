func twoSumHash(_ nums: [Int], _ target: Int) -> [Int] {
    
    let keys = insert(nums)
    var result: [Int] = []
    
    
    for i in nums{
        let sum  = target - i
        if search(nums, keys, sum) == true {
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
    let sumValue =  sum % (tableSize + 3)
    print(keys)
    print(sumValue)
    
    if(keys.contains(sumValue)){
        print("true")
        return true
    }
    else{
        return false
    }
    
}
