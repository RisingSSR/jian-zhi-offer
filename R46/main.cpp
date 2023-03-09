//
//  main.cpp
//  R46
//
//  Created by SSR on 2023/3/8.
//

#include <iostream>
#include <string>

using namespace::std;

class Solution {
public:
    int translateNum(int num) {
        string src = to_string(num);
        int p = 0, q = 0, r = 1;
        for (int i = 0; i < src.size(); ++i) {
            p = q;
            q = r;
            r = q;
            if (i == 0) {
                continue;
            }
            auto pre = src.substr(i - 1, 2);
            if (pre <= "25" && pre >= "10") {
                r += p;
            }
        }
        return r;
    }
};

int main(int argc, const char * argv[]) {
    
    return 0;
}
