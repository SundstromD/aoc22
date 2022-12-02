#include "Default_includes.hpp"
#include "Solution.hpp"
#include <sstream>

/*
* A = ROCK
* B = PAPER
* C = SCISSOR
*
* Y = PAPER
* X = ROCK
* Z = SCISSOR
*
* LOSS = 0, DRAW = 3, WIN = 6
* ROCK = 1, PAPER = 2, SCISSOR = 3
*/
static unsigned int score(const char& i_1, const char& i_2)
{
    if(i_1 == 'A' && i_2 == 'Y')
    {
        return 2 + 6;
    }
    else if(i_1 == 'A' && i_2 == 'Z')
    {
        return 3 + 0;
    }       
    else if(i_1 == 'A' && i_2 == 'X')
    {
        return 1 + 3;
    }

    else if(i_1 == 'B' && i_2 == 'Y')
    {
        return 2 + 3;
    }
    else if(i_1 == 'B' && i_2 == 'Z')
    {
        return 3 + 6;
    }       
    else if(i_1 == 'B' && i_2 == 'X')
    {
        return 1 + 0;
    }

    else if(i_1 == 'C' && i_2 == 'Y')
    {
        return 2 + 0;
    }
    else if(i_1 == 'C' && i_2 == 'Z')
    {
        return 3 + 3;
    }       
    else if(i_1 == 'C' && i_2 == 'X')
    {
        return 1 + 6;
    }

    return 0;
}

template<> void solve<Day02>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::vector<std::pair<char, char>> games;

    while (std::getline(ins, input)) 
    {
        games.push_back(std::make_pair(input.at(0), input.at(2)));
    }

    auto total_score = 0u;

    for(auto it = games.begin(); it != games.end(); ++it)
    {
        total_score += score((*it).first, (*it).second);
    }

    outs << "(Part 1) Total score = " << total_score << std::endl
         << "(Part 2) Total score part 2 = " 
         << std::endl;
}