TABLE OF CONTENTS

[How to use DSA Takeover?](#How-to-use-dsa-takeover)

[CHEATSHEET: Search Algorithms](#cheatsheet-search-algorithms)<br>
[CHEATSHEET: Selection Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Sorting Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Basic calculations](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Arithmetic Operations (Complexity Analysis)](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Exponentiation Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Recursion & Iterative algorithms](#cheatsheet-_-algorithms)<br>
[VISUALIZE: Basic Data Structures](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Array](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Stack](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Linked List](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Greedy Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Dynamic Programming](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Permutation Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Bitwise Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: String Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Graph Algorithms](#cheatsheet-_-algorithms)<br>
[CHEATSHEET: Crazy Hard Problems](#cheatsheet-_-algorithms)<br>
[CONCLUDING NOTE](#cheatsheet-_-algorithms)<br>

---

# How to use DSA Takeover?

This book is uniquely structured to help you learn all core concepts in Data Structures and Algorithms.  

Each chapter is designed specific to a particular domain.  

Chapters for domains like Search algorithms, Selection algorithms and Sorting algorithms:  
- Start with a table of Time & Space Complexity of all different algorithms  

| Search Algorithms   | Time Complexity              |                           |                | Space Complexity |  
|---------------------|------------------------------|---------------------------|----------------|------------------|  
|                     | Best case                   | Average case             | Worst case     |                  |  
| Linear Search       | O(1)                        | O(N)                     | O(N)           | O(N)             |  
| Binary Search       | O(1)                        | O(logN)                  | O(logN)        | O(1): iterative, O(logN): recursive|  
| Interpolation Search| O(1)                        | O(loglogN)               | O(N)           | O(1)             |  

- A table explaining the concepts of each algorithm in short.  
- C++ code snippets of specific algorithms.

```cpp
bool hashSetSearch(const vector<int>& vec, int target) {
    // Initialize set with vector elements
    unordered_set<int> hashSet(vec.begin(), vec.end());

    return hashSet.find(target) != hashSet.end();
}
```

Other chapters like Dynamic Programming & Permutation algorithms:  
- List core problems with a to-the-point explanation with corresponding C++ code snippet.  
    - Each problem can be covered at most 4 minutes.  

The C++ code snippets are important as it will help you mentally practice coding and will actually help in developing implementation skills.  

Reading the complete book gives you equivalent knowledge of solving over 550 coding problems. All DSA coding patterns are covered which will help you in solving all Coding Interview problems easily.  

For best results, you are suggested to:  
- Revise this book every 2 months.  
- Going through the book will take less than a week (from second time).  
- After each section or problem, visualize and think about the solution mentally and implement the solution mentally.  

---

# CHEATSHEET: Search Algorithms

Search Problem: Given a set of N elements and a target element X, we need to check if X exists in the set of N elements.

Time and Space Complexity of different Search Algorithms:

| Search Algorithms       | Best case | Average case | Worst case | Space Complexity           |  
|-------------------------|-----------|--------------|------------|----------------------------|  
| Linear Search           | O(1)      | O(N)         | O(N)       | O(N)                       |  
| Binary Search           | O(1)      | O(logN)      | O(logN)    | O(1): iterative, O(logN): recursive |  
| Interpolation Search    | O(1)      | O(loglogN)   | O(N)       | O(1)                       |  
| Binary Tree             | O(1)      | O(N)         | O(N)       | O(N)                       |  
| Binary Search Tree      | O(1)      | O(logN)      | O(N)       | O(N)                       |  
| Self Adjusting BST      | O(1)      | O(logN)      | O(logN)    | O(N)                       |  
| Hash Set                | O(1)      | O(1)         | O(1)       | O(N)                       |  

Core ideas:
- The basic approach is if the N elements are stored in an array, one can search elements one by one. [Linear Search]  
- Optimized approaches exist: if elements are in sorted order [Binary Search] or if the distribution of the elements is known [Interpolation Search].  
- The N elements can be stored in any data structure.  
- If the elements are stored in a Hash Set, then search can be performed in constant O(1) time.  

Core idea of the different search algorithms:

| Search Algorithms       | Core Idea                                                                                              | When to use?                                 |  
|-------------------------|-------------------------------------------------------------------------------------------------------|--------------------------------------------|  
| Linear Search           | Search element one by one.                                                                           | When dataset is small (N <= 47).           |  
| Binary Search           | Compare with the middle element. If it did not match and is less than the target, continue in the left half or else continue in the right half. | When data is sorted. If not sorted, consider the sorting complexity of O(N logN). |  
| Interpolation Search    | Predict the position of target assuming the distribution pattern of data. If it matches, it is  fine. If current element is less than target, continue the search in left half or else on the right half. | When data is sorted and follows a fixed distribution pattern. |
| Binary Tree             | Traverse nodes and search one by one.                                           | Same as Linear Search. Only if data is already in a Binary Tree.             |
| Binary Search Tree      | Traverse nodes, go to left child node if current node value is greater than target or if less, go to right child node. | Similar to Binary Search. Only if data is already in BST. Creating BST will take O(N) time if data is already sorted. |
| Self Adjusting BST      | Same as BST.                                                                                          | Same as BST. This avoids the worst case in BST.        |
| Hash Set                | Use the target element as a key (think as index in array) in hash set and check if it exists.         | When multiple search queries are performed and space is flexible. Preparing hash set will take O(N) time. |

Code snippet of Linear Search:

```cpp
#include <vector>

using namespace std;

// Search target in vector vec and return the index else return -1 (invalid index)
int linearSearch(const vector<int>& vec, int target) {
    for (int i = 0; i < vec.size(); ++i) {
        if (vec[i] == target) {
            return i; // Return index if found
        }
    }
    return -1; // Return -1 if not found
}

int main() {
      vector<int> vec = {10, 20, 30, 40, 50};
      int target = 30;
      int index = linearSearch(vec, target);

      if (index != -1) {
         cout << "Element found at index " << index << endl;
      } else {
          cout << "Element not found" << endl;
      }
      return 0;
  }

```

Code snippet of Binary Search:

```cpp
// Vector vec is in sorted order
// Sorted vector is a pre-requisite for Binary Search
int binarySearch(const vector<int>& vec, int target) {
      // Search target between index “low” and “high”
      int low = 0;
      int high = vec.size() - 1;
      while (low <= high) {
          // Find the middle element of the array
          int mid = low + (high - low) / 2;

          ​// Check if middle element is the target
          ​// Or check if target might be in left or right side of the middle element (possible as vector is in sorted order)
          if (vec[mid] == target) {
              return mid;
              // Element found
              ​// If middle element is < target, then target must be in right side (larger elements)
          } else if (vec[mid] < target) {
              low = mid + 1;
          } else {
  ​            // Target might be in left side
              high = mid - 1;
          }
  ​        // Low and high are updated. Continue search.
      }
      return -1; // Element not found
  }

```

Why time complexity of Binary Search is O(logN) in worst case?

In Binary Search, we are reducing the number of elements to be searched by a factor of 2 at each step. So, we have searched the entire set when the number of elements to be searched becomes 1 or 0.

Number of elements to be searched:  
Step 1: N  
Step 2: N/2  
Step 3: N/4  
…  
Step M-1: 1 or 0  

M = number of times N can be divided by 2.  
This is the maximum power of 2 in N which is logN.

Also note:  
- Number of bits required to represent N is logN.  
- Largest integer represented by M bits is 2^(M-1).

Code snippet of search using Hash Set:

```cpp
bool hashSetSearch(const vector<int>& vec, int target) {
      // Initialize set with vector elements
      unordered_set<int> hashSet(vec.begin(), vec.end());
      return hashSet.find(target) != hashSet.end();
}
```
