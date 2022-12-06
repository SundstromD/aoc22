#include "Default_includes.hpp"
#include "Solution.hpp"

template<> void solve<Day05>(std::istream& ins, std::ostream& outs)
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
    }
    
    outs << "(Part 1) Fully covered = " << fully_covered << std::endl
         << "(Part 2) Overlapping = " << overlapping 
         << std::endl;
}