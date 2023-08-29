
//1 . Given an input array find 2nd maximum number from array

// Input  =  [1,2,4,6,7,8,9,10,3,4,6]
// output =  9

func secondLargest(arr : [Int])-> Int {
    var arr = arr
    
    for x in 0..<arr.count {
        for y in x+1..<arr.count {
            if(arr[x]>arr[y]) {
                let temp = arr[x]
                arr[x] = arr[y]
                arr[y] = temp
            }
        }
    }
    return arr[arr.count - 2]
}

var test = [1,2,4,6,7,8,9,10,3,4,6]
print(secondLargest(arr: test))



//2; given input array and and a target number , find the combination of 2 numbers whose sum is equal to target number


// input = [1,2,4,6, 0]  , Target Number = 5
// output = [1,4]

func add(arr: Array<Int>, target : Int)-> Array<Int> {
    var first : Int = target - arr[0]
    
    for i in 0..<arr.count {
        first = target - arr[i]
        for num in arr {
            if(first + num == target) {
                return [num,first]
            }
        }
    }
    return []
}

print(add(arr: [1,2,4,6,0], target: 5))

// 3. Coding Challange PDF



