/* 
 * File:   WaitingThreadSet.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:53
 */

#ifndef WAITINGTHREADSET_H
#define	WAITINGTHREADSET_H

#include "Thread.h"

namespace seL4 {

    class WaitingThreadSet {
    public:
        WaitingThreadSet();
        //WaitingThreadSet(const WaitingThreadSet& orig);
        virtual ~WaitingThreadSet();

        void addWaitingThread(Thread* thread_);
        void deleteWaitingThread(Thread* thread_);
    private:

    };
}
#endif	/* WAITINGTHREADSET_H */

