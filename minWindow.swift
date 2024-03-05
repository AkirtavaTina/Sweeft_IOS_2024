class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var tFreq = [Character: Int]()
        var sFreq = [Character: Int]()
        var charLeftToBeTaken = t.count

        var l = 0, r = 0
        var result = ""

        for char in t {
            tFreq[char, default: 0] += 1
        }

        let sArray = Array(s)

        while r < sArray.count {
            let rChar = sArray[r]
            sFreq[rChar, default: 0] += 1

            if let tFreqCount = tFreq[rChar], sFreq[rChar]! <= tFreqCount {
                charLeftToBeTaken -= 1
            }

            while charLeftToBeTaken == 0 {
                let lChar = sArray[l]
                sFreq[lChar]! -= 1

                if let tFreqCount = tFreq[lChar], sFreq[lChar]! < tFreqCount {
                    if result.isEmpty {
                        result = String(sArray[l...r])
                    } else if result.count > (r - l) {
                        result = String(sArray[l...r])
                    }
                    charLeftToBeTaken += 1
                }
                l += 1
            }
            r += 1
        }
        return result
    }
}
