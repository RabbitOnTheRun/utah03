/* 
 * File:   Thread.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:50
 */

#ifndef THREAD_H
#define	THREAD_H

#include "Message.h"
#include "VirtualRegister.h"
#include "AddressSpace.h"


namespace seL4 {

    typedef int ThreadID;

    class ProcessingUnit;
    
    class Thread {
    public:
        //Thread();
        Thread(ProcessingUnit* pu_);
        //Thread(const Thread& orig);
        virtual ~Thread();
        void sendIPC(Thread* dest);
        void copyMessageToVirtualRegister(Message& message_);
        void copyVirtualRegister(VirtualRegister& virtualRegister_);
        AddressSpace getAddressSpace();
    private:
        VirtualRegister virtualRegister;
        AddressSpace addressSpace;
        ProcessingUnit* processingUnit;
    };
}
#endif	/* THREAD_H */

