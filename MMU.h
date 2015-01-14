/* 
 * File:   MMU.h
 * Author: ntanaka
 *
 * Created on 2014/12/31, 0:03
 */

#ifndef MMU_H
#define	MMU_H

#include "AddressSpace.h"

namespace seL4 {

    class MMU {
    public:
        MMU();
        //MMU(const MMU& orig);
        virtual ~MMU();
        void setAddressSpace(AddressSpace addressSpace_);

    private:
        void flushTLB(AddressSpace addressSpace_);
        AddressSpace addressSpace;
    };
}
#endif	/* MMU_H */

