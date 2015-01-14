/* 
 * File:   ThreadTable.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 23:06
 */

#ifndef THREADMAP_H
#define	THREADMAP_H

#include <map>
#include "Thread.h"

namespace seL4 {

    class ThreadMap {
    public:
        ThreadMap();
        //ThreadTable(const ThreadTable& orig);
        virtual ~ThreadMap();
        void addThread(ThreadID threadID_, Thread* thread_);
        Thread* getThread(ThreadID threadID_);
    private:      
        std::map<ThreadID, Thread*> threadMap;
    };
}
#endif	/* THREADMAP_H */

