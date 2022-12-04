#ifndef SOLUTION_HPP_
#define SOLUTION_HPP_

#include <fstream>
#include <iostream>
#include <string>
#include <vector>

enum Day {
    Day01, Day02, Day03, Day04, Day05,
    Day06, Day07, Day08, Day09, Day10,
    Day11, Day12, Day13, Day14, Day15,
    Day16, Day17, Day18, Day19, Day20,
    Day21, Day22, Day23, Day24, Day25,
    DAY_COUNT
};

std::string day_to_string(Day d);

template<Day d> void solve(std::istream& input, std::ostream& output);

std::vector<std::string> tokenize(std::string s, std::string del);

struct hash_pair {
    template <class T1, class T2>
    size_t operator()(const std::pair<T1, T2>& p) const
    {
        auto hash1 = std::hash<T1>{}(p.first);
        auto hash2 = std::hash<T2>{}(p.second);
 
        if (hash1 != hash2) {
            return hash1 ^ hash2;             
        }
         
        // If hash1 == hash2, their XOR is zero.
          return hash1;
    }
};

#endif // SOLUTION_HPP_