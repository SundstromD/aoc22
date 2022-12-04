#include "Default_includes.hpp"
#include "Solution.hpp"

bool is_fully_contained(unsigned int& a, unsigned int& b, unsigned int& c, unsigned int& d)
{
    return (b <= d && a >= c) || (b >= d && a <= c); 
}

bool is_overlapping(unsigned int& a, unsigned int& b, unsigned int& c, unsigned int& d)
{
    return a <= d && c <= b; 
}

template<> void solve<Day04>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::vector<std::pair<unsigned int, unsigned int>> ranges;
    unsigned int fully_covered = 0u;
    unsigned int overlapping = 0u;

    while (std::getline(ins, input)) 
    {
        std::pair<unsigned int, unsigned int> range;

        auto tokenized = tokenize(input, ",");
        for (auto tok : tokenized)
        {
            auto entry = tokenize(tok, "-");
            range.first = std::stoi(entry.at(0));
            range.second = std::stoi(entry.at(1));
            ranges.push_back(range);

            auto nr_of_ranges = ranges.size();
            if (nr_of_ranges % 2 == 0 && is_fully_contained(
                ranges.at(nr_of_ranges - 2).first, 
                ranges.at(nr_of_ranges - 2).second, 
                ranges.at(nr_of_ranges - 1).first,
                ranges.at(nr_of_ranges - 1).second))
            {
                fully_covered ++;
            }
            
            if (nr_of_ranges % 2 == 0 && is_overlapping(
                ranges.at(nr_of_ranges - 2).first, 
                ranges.at(nr_of_ranges - 2).second, 
                ranges.at(nr_of_ranges - 1).first,
                ranges.at(nr_of_ranges - 1).second))
            {
                overlapping ++;
            }

        }
    }
    
    outs << "(Part 1) Fully covered = " << fully_covered << std::endl
         << "(Part 2) Overlapping = " << overlapping 
         << std::endl;
}