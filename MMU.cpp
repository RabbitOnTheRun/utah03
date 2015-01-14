/* 
 * File:   MMU.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/31, 0:03
 */

#include "MMU.h"
#include "Log.h"

namespace seL4 {

    MMU::MMU() {
    }

    //MMU::MMU(const MMU& orig) {
    //}

    MMU::~MMU() {
    }

    void MMU::setAddressSpace(AddressSpace addressSpace_) {
        addressSpace = addressSpace_;
        LOGMESSAGE("MMU", "MMU", "flushTLB");
        flushTLB(addressSpace);
    }

    void MMU::flushTLB(AddressSpace addressSpace_) {
        // do something
    }

}
