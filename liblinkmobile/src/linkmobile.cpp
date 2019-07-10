//
//  linkmobile.cpp
//  LinkMobile
//
//  Created by Tristian Azuara on 7/10/19.
//  Copyright © 2019 BlockWave, Inc. All rights reserved.
//

#include "linkmobile.hpp"

/**
 * Add 2 ints.
 */
int sum(const int a, const int b) {
    return a + b;
}

/**
 * Return a new string by concatenating 2.
 */
char* concat(const char* a, const char* const b) {
    return (char*)(std::string(a) + std::string(b)).c_str();
}
