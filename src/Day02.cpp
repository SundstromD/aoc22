#include "Default_includes.hpp"
#include "Solution.hpp"

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
    std::unordered_map<std::pair<char, char>, unsigned int, hash_pair> score_map;

    score_map[{'A', 'Y'}] = 8;
    score_map[{'A', 'Z'}] = 3;
    score_map[{'A', 'X'}] = 4;

    score_map[{'B', 'Y'}] = 5;
    score_map[{'B', 'Z'}] = 9;
    score_map[{'B', 'X'}] = 1;

    score_map[{'C', 'Y'}] = 2;
    score_map[{'C', 'Z'}] = 6;
    score_map[{'C', 'X'}] = 7;

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
        total_score += score_map[*it];
    }

    for(auto it = games_p2.begin(); it != games_p2.end(); ++it)
    {
        total_score_p2 += score_map[*it];
    }

    outs << "(Part 1) Total score = " << total_score << std::endl
         << "(Part 2) Total score part 2 = " << total_score_p2 
         << std::endl;
}