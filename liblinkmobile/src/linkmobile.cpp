//
//  linkmobile.cpp
//  LinkMobile
//
//  Created by Tristian Azuara on 7/10/19.
//  Copyright © 2019 BlockWave, Inc. All rights reserved.
//

#include "linkmobile.hpp"

/**
 */
int sum(const int a, const int b) {
    return a + b;
}

/**
 */
char* concat(const char* a, const char* const b) {
    std::string v = "using a string";
    const char* t = v.c_str();
//    char* x = t;
    return (char*)t;
}
