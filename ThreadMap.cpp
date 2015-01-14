/* 
 * File:   ThreadTable.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/30, 23:07
 */

#include <string>
#include "ThreadMap.h"

namespace seL4 {

    ThreadMap::ThreadMap() {
    }

    //ThreadTable::ThreadTable(const ThreadTable& orig) {
    //}

    ThreadMap::~ThreadMap() {
    }

    void ThreadMap::addThread(ThreadID threadID_, Thread* thread_){
        threadMap[threadID_] = thread_;
    }
    
    Thread* ThreadMap::getThread(ThreadID threadID_){
        if (threadMap.find(threadID_) == threadMap.end()) {
            return NULL;
        } else {
            return threadMap[threadID_];
        }
    } 
}
