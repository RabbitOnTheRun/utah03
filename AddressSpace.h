/* 
 * File:   AddressSpace.h
 * Author: ntanaka
 *
 * Created on 2014/12/31, 0:04
 */

#ifndef ADDRESSSPACE_H
#define	ADDRESSSPACE_H

namespace seL4 {

    class AddressSpace {
    public:
        AddressSpace();
        //AddressSpace(const AddressSpace& orig);
        virtual ~AddressSpace();
    private:

    };
}
#endif	/* ADDRESSSPACE_H */

