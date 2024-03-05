class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        var startTimes = intervals.map { $0[0] }.sorted()
        var endTimes = intervals.map { $0[1] }.sorted()
        
        var roomsNeeded = 0
        var endIdx = 0
        
        for startTime in startTimes {
            if startTime < endTimes[endIdx] {
                roomsNeeded += 1
            } else {
                endIdx += 1
            }
        }
        
        return roomsNeeded
    }
}
