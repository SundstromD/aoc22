#include "Default_includes.hpp"
#include "Solution.hpp"

// Find the max calories carried
static std::pair<unsigned int, unsigned int> calc_max_calories(const std::unordered_map<unsigned int, unsigned int>& ins)
{
    return *std::max_element(
        ins.begin(), 
        ins.end(),
         [](const std::pair<unsigned int, unsigned int>& p1, const std::pair<unsigned int, unsigned int>& p2) {
            return p1.second < p2.second; 
            });
}

template<>void solve<Day01>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::unordered_map<unsigned int, unsigned int> caloriesByElf;

    auto elf = 0u;
    while (std::getline(ins, input))
    {
        if (input.empty())
        {
            elf++;
            continue;
        }

        auto elfExist = caloriesByElf.count(elf);
        unsigned int calories = std::stoi(input);

        if (elfExist == 0)
        {
            caloriesByElf[elf] = calories;
        } else 
        {
            auto oldCalories = caloriesByElf.at(elf);
            caloriesByElf[elf] = oldCalories + calories;
        }
    }

    std::pair<unsigned int, unsigned int> max = calc_max_calories(caloriesByElf);
    caloriesByElf.erase(max.first);
    
    std::pair<unsigned int, unsigned int> second_max = calc_max_calories(caloriesByElf);
    caloriesByElf.erase(second_max.first);

    std::pair<unsigned int, unsigned int> third_max = calc_max_calories(caloriesByElf);
    caloriesByElf.erase(third_max.first);
    
    outs << "(Part 1) Max calories = " << max.second<< std::endl
         << "(Part 2) Top three elves combined calories = " << max.second + second_max.second + third_max.second << std::endl;
}