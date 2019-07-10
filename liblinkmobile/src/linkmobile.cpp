//
//  linkmobile.cpp
//  LinkMobile
//
//  Created by Tristian Azuara on 7/10/19.
//  Copyright © 2019 BlockWave, Inc. All rights reserved.
//

#include "linkmobile.hpp"

struct MyException : public std::exception
{
    std::string s;
    MyException(std::string ss) : s(ss) {}
    ~MyException() throw () {} // Updated
    const char* what() const throw() { return s.c_str(); }
};


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

/**
 * Return a new string by concatenating 2.
 */
char* exception(const char* msg) {
    try {
        throw MyException(std::string(msg));
    } catch (MyException& ex) {
        return (char*)ex.what();
    }
}

