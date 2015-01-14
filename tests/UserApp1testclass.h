/*
 * File:   UserApp1testclass.h
 * Author: ntanaka
 *
 * Created on 2014/12/31, 0:29:22
 */

#ifndef USERAPP1TESTCLASS_H
#define	USERAPP1TESTCLASS_H

#include <cppunit/extensions/HelperMacros.h>

class UserApp1testclass : public CPPUNIT_NS::TestFixture {
    CPPUNIT_TEST_SUITE(UserApp1testclass);

    CPPUNIT_TEST(testDoApp1);

    CPPUNIT_TEST_SUITE_END();

public:
    UserApp1testclass();
    virtual ~UserApp1testclass();
    void setUp();
    void tearDown();

private:
    void testDoApp1();

};

#endif	/* USERAPP1TESTCLASS_H */

