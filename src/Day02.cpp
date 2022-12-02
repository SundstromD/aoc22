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

* Part 2
* X = lose
* Y = draw
* Z = win
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

static char what_to_play(const char& i_1, const char& i_2)
{
    if(i_2 == 'X') // LOSE
    {
        if(i_1 == 'A')
        {
            return 'Z';
        }
        else if(i_1 == 'B')
        {
            return 'X';
        }  
        else if(i_1 == 'C')
        {
            return 'Y';
        } 
    }

    if(i_2 == 'Y') // DRAW
    {
        if(i_1 == 'A')
        {
            return 'X';
        }
        else if(i_1 == 'B')
        {
            return 'Y';
        }  
        else if(i_1 == 'C')
        {
            return 'Z';
        } 
    }  

    if(i_2 == 'Z') // WIN
    {
        if(i_1 == 'A')
        {
            return 'Y';
        }
        else if(i_1 == 'B')
        {
            return 'Z';
        }  
        else if(i_1 == 'C')
        {
            return 'X';
        } 
    } 

    return 'U';
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
    std::vector<std::pair<char, char>> games_p2;

    while (std::getline(ins, input)) 
    {
        games.push_back(std::make_pair(input.at(0), input.at(2)));
        auto play = what_to_play(input.at(0), input.at(2));
        games_p2.push_back(std::make_pair(input.at(0), play));
    }

    auto total_score = 0u;
    auto total_score_p2 = 0u;

    for(auto it = games.begin(); it != games.end(); ++it)
    {
        total_score += score((*it).first, (*it).second);
    }

    for(auto it = games_p2.begin(); it != games_p2.end(); ++it)
    {
        total_score_p2 += score((*it).first, (*it).second);
    }

    outs << "(Part 1) Total score = " << total_score << std::endl
         << "(Part 2) Total score part 2 = " << total_score_p2 
         << std::endl;
}