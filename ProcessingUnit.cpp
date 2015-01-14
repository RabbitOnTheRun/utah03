/* 
 * File:   ProcessingUnit.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/30, 22:56
 */

#include "ProcessingUnit.h"
#include "Log.h"

namespace seL4 {

    ProcessingUnit ProcessingUnit::processingUnit;

    ProcessingUnit::ProcessingUnit() {
    }

    //PU::PU(const PU& orig) {
    //}

    ProcessingUnit::~ProcessingUnit() {
    }

    void ProcessingUnit::addReadyThread(Thread* thread_) {
        LOGMESSAGE("ProcessingUnit", "ReadyQueue", "addReadyThread");
        readyQueue.addReadyThread(thread_);
    }

    void ProcessingUnit::addWaitingThread(Thread* thread_) {
        LOGMESSAGE("ProcessingUnit", "WaitingThreadSet", "addWaitingThread");
        waitingThreadSet.addWaitingThread(thread_);
    }

    void ProcessingUnit::deleteReadyThread(Thread* thread_) {
        LOGMESSAGE("ProcessingUnit", "ReadyQueue", "deleteReadyThread");
        readyQueue.deleteReadyThread(thread_);
    }

    void ProcessingUnit::deleteWaitingThread(Thread* thread_) {
        LOGMESSAGE("ProcessingUnit", "WaitingThreadSet", "deleteWaitingThread");
        waitingThreadSet.deleteWaitingThread(thread_);
    }

    void ProcessingUnit::setExecutingThread(Thread* thread_) {
        LOGMESSAGE("ProcessingUnit", "MMU", "setAddressSpace");
        mmu.setAddressSpace(thread_->getAddressSpace());
        executingThread = thread_;
        LOGMESSAGE("ProcessingUnit", "ProcessingUnit", "setProgramCounter");
        //
        //  program counter set
        //
    }

    void ProcessingUnit::schedule() {
        LOGMESSAGE("ProcessingUnit", "ReadyQueue", "getNext");
        Thread* nextThread = readyQueue.getNext();
        LOGMESSAGE("ProcessingUnit", "ProcessingUnit", "setExecutingThread");
        this->setExecutingThread(nextThread);
    }

}
