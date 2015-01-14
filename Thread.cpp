/* 
 * File:   Thread.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/30, 22:50
 */

#include "Thread.h"
#include "ProcessingUnit.h"
#include "Log.h"

namespace seL4 {

    //Thread::Thread() {
    //}

    Thread::Thread(ProcessingUnit* pu_) {
        processingUnit = pu_;
    }

    //Thread::Thread(const Thread& orig) {
    //}

    Thread::~Thread() {
    }

    void Thread::sendIPC(Thread* dest) {
        LOGMESSAGE("src_Thread", "dest_Thread", "copyVirtualRegister");
        dest->copyVirtualRegister(this->virtualRegister);
        LOGMESSAGE("src_Thread", "ProcessingUnit", "deleteWaitingThread");
        this->processingUnit->deleteWaitingThread(dest);
        LOGMESSAGE("src_Thread", "ProcessingUnit", "addReadyThread");
        this->processingUnit->addReadyThread(dest);
        LOGMESSAGE("src_Thread", "ProcessingUnit", "addReadyThread");
        this->processingUnit->addReadyThread(this);
        LOGMESSAGE("src_Thread", "ProcessingUnit", "schedule");
        this->processingUnit->schedule();
    }

    void Thread::copyMessageToVirtualRegister(Message& message_) {
        // copy message to internal Virtual Register
    }

    void Thread::copyVirtualRegister(VirtualRegister& virtualRegister_) {
        this->virtualRegister = virtualRegister_; // implement for now
    }

    AddressSpace Thread::getAddressSpace() {
        return addressSpace;
    }

}