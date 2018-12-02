#include <list>
#include <vector>
#include <unordered_map>
#include <algorithm>
#include "Solution.hpp"

// Calculate the checksum of the ids
static unsigned int checksum_function(const std::vector<std::string>& ids) 
{
    auto twiceMatched = 0;
    auto trippleMatched = 0;

    // Find matches for each id
    for (auto const& id : ids)
    {
        // Map to store twice or tripple matched chars
        std::unordered_map<char, int> charMap;
        std::list<int> found;

        for (auto const& c : id)
        {
            // no need to count if map already has the char
            if (charMap.count(c) > 0) 
            {
                continue;
            }

            auto matches = 0;
            for (auto const& ch : id)
            {
                if (ch == c) 
                {
                    matches++;
                }            
            }

            if (found.size() < 2 && (matches == 2 || matches == 3)) 
            {
                if (found.empty() || found.front() != matches)
                {
                    charMap.insert(std::pair(c, matches));
                }

                found.push_back(matches);
            } 
        }

        for (auto const& charMatch : charMap)
        {
            if (charMatch.second == 2)
            {
                twiceMatched++;
            } else if (charMatch.second == 3)
            {
                trippleMatched++;
            }
        }
    }

    return twiceMatched * trippleMatched;
}

// Finds id that differs by one char at exactly the same position.
static std::string find_id_diff_by_one(const std::vector<std::string>& ids)
{
    std::string commonLetterId;
    for (auto const& id : ids)
    {
        for (auto it = std::find(ids.cbegin(), ids.cend(), id) + 1; it != ids.cend(); it++)
        {
            //std::cout << id << "   " << *it << std::endl;

            std::vector<int> diffIndex;
            for (std::size_t i = 0; i < id.size(); i++)
            {
                if (id[i] != (*it)[i])
                {
                    diffIndex.push_back(i);
                }
            }
            
            if (diffIndex.size() == 1) {
                // Make copy of current id to be pruned
                char idCopy[26];
                std::size_t length = id.copy(idCopy, 26, 0);
                idCopy[length] = '\0';
                std::string prunedId(idCopy);

                // Prune id
                prunedId.erase(prunedId.cbegin() + diffIndex.front());

                commonLetterId = prunedId;
            }
        }
    }

    return commonLetterId;
}

template<>
void solve<Day02>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::vector<std::string> ids;

    while (ins >> input) 
    {
        ids.push_back(input);
    }

    outs << "(Part 1) Checksum = " << checksum_function(ids) << std::endl
         << "(Part 2) ids that diff by one character= " << find_id_diff_by_one(ids)
         << std::endl;
}