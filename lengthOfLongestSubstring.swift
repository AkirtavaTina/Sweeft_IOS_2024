class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var index = 0, index2 = 0, length = 0, old = 0
        let sArray = Array(s)
        for i in 0..<sArray.count {
            if sArray[index2..<i].contains(sArray[i]) == false {
                length += 1
            } else {
                index = index2
                index2 += 1
                length = 1
            }
            if length > old {
                old = length
            }
        }
        return old
    }
}
