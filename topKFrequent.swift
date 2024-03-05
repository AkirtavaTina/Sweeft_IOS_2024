class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for num in nums {
            map[num, default: 0] += 1
        }
        let sortedKeys = map.keys.sorted { map[$0]! > map[$1]! }
        let result = Array(sortedKeys.prefix(k))
        return result
    }
}
