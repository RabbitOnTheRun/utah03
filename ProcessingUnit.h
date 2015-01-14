/* 
 * File:   PU.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:56
 */

#ifndef PROCESSINGUNIT_H
#define	PROCESSINGUNIT_H

#include "Thread.h"
#include "ReadyQueue.h"
#include "WaitingThreadSet.h"
#include "MMU.h"
namespace seL4 {

    class ProcessingUnit {
    public:
        ProcessingUnit();
        //PU(const PU& orig);
        virtual ~ProcessingUnit();

        void addReadyThread(Thread* thread_);
        void addWaitingThread(Thread* thread_);
        void deleteReadyThread(Thread* thread_);
        void deleteWaitingThread(Thread* thread_);
        void setExecutingThread(Thread* thread_);
        void schedule();

        static ProcessingUnit processingUnit;
    private:
        Thread* executingThread;
        ReadyQueue readyQueue;
        WaitingThreadSet waitingThreadSet;
        MMU mmu;
    };
}
#endif	/* PROCESSINGUNIT_H */

