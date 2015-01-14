/* 
 * File:   SystemCall_IF.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/30, 22:57
 */

#include "SystemCall_IF.h"
#include "ProcessingUnit.h"
#include "Log.h"

namespace seL4 {

    SystemCall_IF SystemCall_IF::systemCall_IF;

    SystemCall_IF::SystemCall_IF() {
        processingUnit = &(ProcessingUnit::processingUnit);
    }

    //SystemCall_IF::SystemCall_IF(const SystemCall_IF& orig) {
    //}

    SystemCall_IF::~SystemCall_IF() {
    }

    ThreadID SystemCall_IF::createThread() {
        LOGMESSAGE("SystemCall_IF", "Thread", "new");
        Thread* newThread = new Thread(processingUnit);
        LOGMESSAGE("SystemCall_IF", "ThreadMap", "addThread");
        threadMap.addThread(threadCounter, newThread);
        LOGMESSAGE("SystemCall_IF", "ProcessingUnit", "addWaitingThread");
        processingUnit->addWaitingThread(newThread);
        return threadCounter++;
    }

    void SystemCall_IF::sendIPC(ThreadID src_, ThreadID dest_, Message& message_) {
        LOGMESSAGE("SystemCall_IF", "ThreadMap", "getThread");
        Thread* src = threadMap.getThread(src_); // should check NULL
        LOGMESSAGE("SystemCall_IF", "ThreadMap", "getThread");
        Thread* dest = threadMap.getThread(dest_); // should check NULL

        LOGMESSAGE("SystemCall_IF", "src_Thread", "copyMessageToVirtualRegister");
        src->copyMessageToVirtualRegister(message_);
        LOGMESSAGE("SystemCall_IF", "src_Thread", "sendIPC");
        src->sendIPC(dest);
    }

    void SystemCall_IF::runInitialThread(ThreadID thread_) {
        LOGMESSAGE("SystemCall_IF", "ThreadMap", "getThread");
        Thread* thread = threadMap.getThread(thread_);
        LOGMESSAGE("SystemCall_IF", "ProcessingUnit", "deleteWaitingThread");
        processingUnit->deleteWaitingThread(thread);
        LOGMESSAGE("SystemCall_IF", "ProcessingUnit", "setExecutingThread");
        processingUnit->setExecutingThread(thread);
    }

}
