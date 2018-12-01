#include "Default_includes.hpp"
#include "Solution.hpp"

// Calculates the frequency for given array of deltas
static unsigned int calc_frequency(const std::vector<unsigned int>& ins)
{
    std::string input;

    auto frequency = 0u;
    for (auto const& d : ins)
    {
        frequency += d;
    }

    return frequency;
}

// Finds the first recurring frequency
static unsigned int calc_recurring_frequency(const std::vector<unsigned int>& ins)
{
    std::unordered_set<unsigned int> frequency_set;

    auto frequency = 0u;
    frequency_set.insert(frequency);

    bool found_recurring_frequency = false;
    while (found_recurring_frequency == false) 
    {
        for (auto const& d : ins)
        {
            frequency += d;

            if (frequency_set.count(frequency) > 0)
            {
                found_recurring_frequency = true;
                break;
            } else
            {
                frequency_set.insert(frequency);
            }
        }
    }

    return frequency;
}

template<>
void solve<Day01>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::vector<unsigned int> deltas;

    while (ins >> input)
    {
        deltas.push_back(std::stoi(input));
    }
    
    outs << "(Part 1) Frequency = " << calc_frequency(deltas) << std::endl
         << "(Part 2) Recurring Frequency = " << calc_recurring_frequency(deltas)
         << std::endl;
}