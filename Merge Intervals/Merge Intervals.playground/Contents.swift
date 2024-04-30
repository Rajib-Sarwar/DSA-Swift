class Interval {
    var start: Int
    var end: Int
    
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    
    convenience init() {
        self.init(0, 0)
    }
}

class Solution {
    func insert(_ intervals: [Interval], _ newInterval: Interval) -> [Interval] {
        var mergedIntervals = [Interval]()
        
        var i = 0
        while i < intervals.count && intervals[i].end < newInterval.start {
            mergedIntervals.append(intervals[i])
            i += 1
        }
        
        printInterval(mergedIntervals)
        
        while i < intervals.count && intervals[i].start <= newInterval.end {
            newInterval.start = min(newInterval.start, intervals[i].start)
            newInterval.end = max(newInterval.end, intervals[i].end)
            i += 1
        }
        
        printInterval(mergedIntervals)
        
        mergedIntervals.append(newInterval)
        
        printInterval(mergedIntervals)
        
        while i < intervals.count {
            mergedIntervals.append(intervals[i])
            i += 1
        }
        printInterval(mergedIntervals)
        return mergedIntervals
    }
    
    func printInterval(_ mergedIntervals: [Interval]) {
        for interval in mergedIntervals {
            print("(\(interval.start), \(interval.end))")
        }
        print("-------")
    }
}



let solution = Solution()

solution.insert([Interval(1,3),Interval(2,6),Interval(8,10),Interval(15,18)], Interval(5,9))
