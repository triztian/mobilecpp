//
//  linkmobile.hpp
//  LinkMobile
//
//  Created by Tristian Azuara on 7/10/19.
//  Copyright © 2019 BlockWave, Inc. All rights reserved.
//

#ifndef linkmobile_hpp
#define linkmobile_hpp

#include <stdio.h>
#include <exception>
#include <string>

extern "C" {
    
    int sum(int a, int b);
    
    char* concat(const char* a, const char* const b);
    
    char* exception(const char* msg);
}

#endif /* linkmobile_hpp */
