## Algorithm Complexity

Four part workshop run by Makers Academy that explores Algorithm Complexity https://github.com/makersacademy/course/blob/master/algorithmic_complexity/README.md.

Algorithm complexity is the part of computer science that deals with how efficient programmes are. This workshop takes a deeper look at how programmes interact with memory, and how to use that to make our own programmes faster.

### Task 1: Build a timing framework
- Created a timing framework that returns the time needed to execute a function.
- Timing framework passes into the function arrays that increase in size in the range of 5,000 - 100,000 elements in steps of 5,000 elements. This is to test how the functions scale as the arrays get bigger.
- The timing framework outputs into the terminal the array size and time so it's in a format that can easily be transferred into a spreadsheet into charts.
- The timing framework runs the function for each array size and finds the median. This ensures the results are smoother and more representative

## Task 2: Building algorithms
- Shuffle
- Reverse
- Find Duplicates
- Most Frequent Words
- Sort arrays of zeros and ones
- Sort
- Fibonacci: array up to Nth element
- Mechacoach Pairing: all possible pairings in a list
- Sub-sequence sum: can numbers in array sum to the target

## Task 3: Making algorithms more efficient
- Understanding data structures and how they work in memory.
- Created a shuffle that's quadratic and improved this algorithm to be more efficient by moving the 'shuffled' element to the end of the array before deleting which makes use Understanding how arrays are stored in memory. Deleting the last element of an array has a constant functional form since only one step needs to happen, however deleting an element within an array would be linear. So making this adjustment makes the shuffle algorithm more efficient.
- Took a deeper look at how hash tables are stored in memory and how they're optimised for retrieving a value. Created a duplicate algorithm that uses a hash table (i.e. a Set in Ruby) to optimises finding duplicates.
- Reducing steps to improve algorithm complexity by making use of divide and conquer and recursion. Created two sort algorithms that use this approach; merge sort & quick sort
