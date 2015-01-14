/* 
 * File:   VirtualRegister.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:54
 */

#ifndef VIRTUALREGISTER_H
#define	VIRTUALREGISTER_H

namespace seL4 {

    class VirtualRegister {
    public:
        VirtualRegister();
        //VirtualRegister(const VirtualRegister& orig);
        virtual ~VirtualRegister();
    private:

    };
}
#endif	/* VIRTUALREGISTER_H */

