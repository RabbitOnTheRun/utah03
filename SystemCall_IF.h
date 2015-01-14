/* 
 * File:   SystemCall_IF.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:57
 */

#ifndef SYSTEMCALL_IF_H
#define	SYSTEMCALL_IF_H

#include "Thread.h"
#include "ThreadMap.h"
#include "Message.h"

namespace seL4 {

    class SystemCall_IF {
    public:
        SystemCall_IF();
        //SystemCall_IF(const SystemCall_IF& orig);
        virtual ~SystemCall_IF();
        ThreadID createThread();
        void sendIPC(ThreadID src_, ThreadID dest_, Message& message_);
        void runInitialThread(ThreadID thread_);
        static SystemCall_IF systemCall_IF;
    private:
        ThreadMap threadMap;
        int threadCounter = 0;
        ProcessingUnit* processingUnit;
    };
}
#endif	/* SYSTEMCALL_IF_H */

