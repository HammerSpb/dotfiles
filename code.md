TABLE OF CONTENTS

How to use DSA Takeover?
CHEATSHEET: Search Algorithms  
CHEATSHEET: Selection Algorithms  
CHEATSHEET: Sorting Algorithms  
CHEATSHEET: Basic calculations  
CHEATSHEET: Arithmetic Operations (Complexity Analysis)  
CHEATSHEET: Exponentiation Algorithms  
CHEATSHEET: Recursion & Iterative algorithms  
VISUALIZE: Basic Data Structures  
CHEATSHEET: Array  
CHEATSHEET: Stack  
CHEATSHEET: Linked List  
CHEATSHEET: Greedy Algorithms  
CHEATSHEET: Dynamic Programming [DP]  
CHEATSHEET: Permutation Algorithms  
CHEATSHEET: Bitwise Algorithms  
CHEATSHEET: String Algorithms  
CHEATSHEET: Graph Algorithms  
CHEATSHEET: Crazy Hard Problems  
CONCLUDING NOTE  

---

How to use DSA Takeover?

This book is uniquely structured to help you learn all core concepts in Data Structures and Algorithms.  

Each chapter is designed specific to a particular domain.  

Chapters for domains like Search algorithms, Selection algorithms and Sorting algorithms:  
- Start with a table of Time & Space Complexity of all different algorithms  

| Search Algorithms   | Time Complexity              |                           |                | Space Complexity |  
|---------------------|------------------------------|---------------------------|----------------|------------------|  
|                     | Best case                   | Average case             | Worst case     |                  |  
| Linear Search       | O(1)                        | O(N)                     | O(N)           | O(N)             |  
| Binary Search       | O(1)                        | O(logN)                  | O(logN)        | O(1): iterative, |  
|                     |                             |                          |                | O(logN): recursive|  
| Interpolation Search| O(1)                        | O(loglogN)               | O(N)           | O(1)             |  

- A table explaining the concepts of each algorithm in short.  
- C++ code snippets of specific algorithms.  

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

CHEATSHEET: Search Algorithms

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

Core idea of the different search algorithms:

| Search Algorithms       | Core Idea                                                                                              | When to use?                                 |  
|-------------------------|-------------------------------------------------------------------------------------------------------|--------------------------------------------|  
| Linear Search           | Search element one by one.                                                                           | When dataset is small (N <= 47).           |  
| Binary Search           | Compare with the middle element. If it did not match and is less than the target, continue in the left half or else continue in the right half. | When data is sorted. If not sorted, consider the sorting complexity of O(N logN). |  
| Interpolation Search    | Predict the position of target assuming the distribution pattern of data. If it matches, it is efficient. | When data is sorted and follows a fixed distribution pattern. |

Core ideas:
- The basic approach is if the N elements are stored in an array, one can search elements one by one. [Linear Search]  
- Optimized approaches exist: if elements are in sorted order [Binary Search] or if the distribution of the elements is known [Interpolation Search].  
- The N elements can be stored in any data structure.  
- If the elements are stored in a Hash Set, then search can be performed in constant O(1) time.  
