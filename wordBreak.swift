class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let wordSet = Set(wordDict)
        let n = s.count
        
        var dp = Array(repeating: false, count: n + 1)
        dp[n] = true
        
        for i in (0..<n).reversed() {
            for j in (i + 1)...n {
                if dp[j] && wordSet.contains(String(s[i..<j])) {
                    dp[i] = true
                    break
                }
            }
        }
        
        return dp[0]
    }
}
