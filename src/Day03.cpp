#include "Default_includes.hpp"
#include "Solution.hpp"

unsigned int get_priority(const char& item_type)
{
    if (std::isupper(item_type))
    {
        return (int) item_type - 4294967334;
    }
    
    return (int) item_type - 96;
}

template<> void solve<Day03>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    auto priority_sum = 0u;
    auto grouped_priority_sum = 0u;
    auto rucksack_nr = 0u;
    std::vector<std::string> rucksacks;

    while (std::getline(ins, input)) 
    {
        std::unordered_set<unsigned int> prio;
        std::unordered_set<unsigned int> grouped_prio;

        rucksack_nr ++;
        rucksacks.push_back(input);

        auto compartment_1 = input.substr(0, input.size()/2);
        auto compartment_2 = input.substr(input.size()/2, input.size()/2);

        for (auto ch: compartment_1)
        {
            if (compartment_2.find(ch) != std::string::npos)
            {
                prio.insert(get_priority(ch));
            }
        }

        if (rucksack_nr % 3 == 0)
        {
            for (auto ch : rucksacks.at(0))
            {
                if (rucksacks.at(1).find(ch) != std::string::npos && rucksacks.at(2).find(ch) != std::string::npos)
                {
                    grouped_prio.insert(get_priority(ch));
                }
                
            }
            rucksacks.clear();
        }

        priority_sum += std::reduce(prio.begin(), prio.end());
        grouped_priority_sum += std::reduce(grouped_prio.begin(), grouped_prio.end());
    }

    outs << "(Part 1) Sum of prios = " << priority_sum << std::endl
         << "(Part 2) Sum of grouped prios part 2 = " << grouped_priority_sum
         << std::endl;
}