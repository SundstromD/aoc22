#include <array>

#include "Solution.hpp"

std::string day_to_string(Day d)
{
    const static std::array<std::string, 25> days {{
        "Day01", "Day02", "Day03", "Day04", "Day05",
        "Day06", "Day07", "Day08", "Day09", "Day10",
        "Day11", "Day12", "Day13", "Day14", "Day15",
        "Day16", "Day17", "Day18", "Day19", "Day20",
        "Day21", "Day22", "Day23", "Day24", "Day25"
    }};
    
    return days[d];
}

std::vector<std::string> tokenize(std::string s, std::string del = " ")
{
    std::vector<std::string> splitted;
    int start, end = -1*del.size();
    do {
        start = end + del.size();
        end = s.find(del, start);
        splitted.push_back(s.substr(start, end - start));
    } while (end != -1);
    return splitted;
}
