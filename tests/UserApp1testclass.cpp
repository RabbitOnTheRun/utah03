/*
 * File:   UserApp1testclass.cpp
 * Author: ntanaka
 *
 * Created on 2014/12/31, 0:29:23
 */

#include "UserApp1testclass.h"
#include "../UserApp.h"


CPPUNIT_TEST_SUITE_REGISTRATION(UserApp1testclass);

UserApp1testclass::UserApp1testclass() {
}

UserApp1testclass::~UserApp1testclass() {
}

void UserApp1testclass::setUp() {
}

void UserApp1testclass::tearDown() {
}

void UserApp1testclass::testDoApp1() {
    seL4::UserApp userApp;
    userApp.doApp1();
    if (true /*check result*/) {
        CPPUNIT_ASSERT(true);
    }
}

