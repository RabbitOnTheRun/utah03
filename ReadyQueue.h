/* 
 * File:   ReadyQueue.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:52
 */

#ifndef READYQUEUE_H
#define	READYQUEUE_H

#include "Thread.h"

namespace seL4 {

    class ReadyQueue {
    public:
        ReadyQueue();
        //ReadyQueue(const ReadyQueue& orig);
        virtual ~ReadyQueue();
        void addReadyThread(Thread* thread_);
        void deleteReadyThread(Thread* thread_);
        Thread* getNext();
    private:

    };
}
#endif	/* READYQUEUE_H */

