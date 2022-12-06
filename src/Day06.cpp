#include "Default_includes.hpp"
#include "Solution.hpp"

template<> void solve<Day06>(std::istream& ins, std::ostream& outs)
{
    if (!ins.good())
    {
        outs << "Failed to open input file!" << std::endl;
        return;
    }

    std::string input;
    std::unordered_set<char> chars;
    std::vector<char> vec_chars;
    std::vector<char> vec_chars_message;
    std::unordered_set<char> chars_message;
    auto characters_processed_packet = 0u;
    auto packet_read = false;
    auto characters_processed_message = 0u;
    unsigned int index = 0u;
    
    while (std::getline(ins, input)) 
    {
        for (auto ch : input)
        {
            index++;
            auto maybe_inserted = chars.insert(ch);
            auto maybe_inserted_message = chars_message.insert(ch);

            if (maybe_inserted.second)
            {
                vec_chars.push_back(ch);
            } else if (maybe_inserted.second ==false)
            {
                vec_chars.erase(vec_chars.begin(), std::find(vec_chars.begin(), vec_chars.end(), ch) + 1);
                vec_chars.push_back(ch);
                chars.clear();

                for (auto c : vec_chars)
                {
                    chars.insert(c);
                }     
            }


            if (maybe_inserted_message.second)
            {
                vec_chars_message.push_back(ch);
            } else if (maybe_inserted_message.second ==false)
            {
                vec_chars_message.erase(vec_chars_message.begin(), std::find(vec_chars_message.begin(), vec_chars_message.end(), ch) + 1);
                vec_chars_message.push_back(ch);
                chars_message.clear();

                for (auto c : vec_chars_message)
                {
                    chars_message.insert(c);
                }     
            } 

            if (chars.size() == 4 && packet_read == false)
            {   
                characters_processed_packet = index;
                packet_read = true;
            }

            if (chars_message.size() == 14)
            {   
                characters_processed_message = index;
                break;
            }
        }
    }
    
    outs << "(Part 1) Characters processed start of packet = " << characters_processed_packet << std::endl
         << "(Part 2) Characters processed start of message = " << characters_processed_message << std::endl;
}