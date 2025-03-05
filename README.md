# Assembly Language Algorithms on emu8086

This repository contains a collection of **assembly language** algorithms, all implemented using the **emu8086** emulator. The algorithms cover a variety of tasks such as sorting, string manipulation, mathematical computations, and basic logical operations. This project is designed to provide a learning resource for **x86 assembly language programming** and to demonstrate the capabilities of the **emu8086 emulator**.

## Features

<ul>
  <li><b>String Operations:</b> Includes operations like counting vowels, replacing substrings, reversing strings, and concatenating strings.</li>
  <li><b>Mathematical Operations:</b> Includes algorithms for prime number checks, palindrome checks, leap year checks, and factorial calculations.</li>
  <li><b>Sorting Algorithms:</b> Implements popular sorting algorithms like Bubble Sort, Insertion Sort, Selection Sort, Merge Sort, and Quick Sort.</li>
  <li><b>Search Algorithms:</b> Implements Linear Search and Binary Search to find elements in arrays.</li>
  <li><b>Array Operations:</b> Includes searching for elements in arrays and separating characters and numbers from strings.</li>
  <li><b>Procedures:</b> Provides procedure-based implementations to enhance code reusability and modularity.</li>
</ul>

## Algorithms Overview

### String Operations

<ul>
  <li><b>Count Vowels:</b> This program counts the number of vowels (a, e, i, o, u) in a given string.</li>
  <li><b>Replace String:</b> Replaces a specified substring with another string within the main string.</li>
  <li><b>Reverse String:</b> Reverses the order of characters in a string.</li>
  <li><b>Word Reverse:</b> Reverses the order of words in a string while keeping the characters intact.</li>
  <li><b>Remove Substring:</b> Removes all occurrences of a specific substring from a string.</li>
  <li><b>Concatenate Strings:</b> Combines two strings into one larger string.</li>
  <li><b>Separate Characters and Numbers:</b> Separates digits and alphabetic characters from a string into two different arrays.</li>
</ul>

### Mathematical Operations

<ul>
  <li><b>Prime Number Check:</b> This program checks whether a given number is prime by testing divisibility with numbers from 2 to the square root of the given number.</li>
  <li><b>Palindrome Check:</b> Checks whether a string or number is a palindrome (i.e., it reads the same forward and backward).</li>
  <li><b>Leap Year Check:</b> Determines if a given year is a leap year based on the rules: divisible by 4, not divisible by 100 unless also divisible by 400.</li>
  <li><b>Factorial Calculation:</b> Computes the factorial of a number using both iterative and recursive methods.</li>
</ul>

### Sorting Algorithms

<ul>
  <li><b>Bubble Sort:</b> Repeatedly compares and swaps adjacent elements to sort the array.</li>
  <li><b>Insertion Sort:</b> Inserts each element into its correct position in the sorted portion of the array.</li>
  <li><b>Quick Sort:</b> Divides the array into smaller sub-arrays and sorts them using a pivot element to partition the array.</li>
  <li><b>Merge Sort:</b> Divides the array into two halves, sorts them recursively, and then merges them in sorted order.</li>
  <li><b>Selection Sort:</b> Selects the smallest element in the unsorted part of the array and places it at the beginning.</li>
</ul>

### Search Algorithms

<ul>
  <li><b>Linear Search:</b> Searches through an array sequentially to find a given element.</li>
  <li><b>Binary Search:</b> Efficiently searches for an element in a sorted array by repeatedly dividing the search interval in half.</li>
</ul>

### Array Operations and Procedures

<ul>
  <li><b>Search Element in Array:</b> A procedure that searches for an element in an array, using either a linear or binary search method.</li>
  <li><b>Procedures:</b> This project uses assembly procedures to modularize the code and make it reusable, improving readability and code organization.</li>
</ul>

## Contributing

Contributions to this project are welcome! If you would like to contribute, you can:

<ol>
  <li>Fork the repository.</li>
  <li>Create a new branch (`git checkout -b feature-branch`).</li>
  <li>Commit your changes (`git commit -am 'Add new feature'`).</li>
  <li>Push to the branch (`git push origin feature-branch`).</li>
  <li>Create a pull request.</li>
</ol>

Please make sure that all code is properly commented, and try to maintain consistency with the existing code structure.

## License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute the code as long as you retain the copyright notice and disclaimers from this repository.
