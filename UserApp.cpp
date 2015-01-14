/* 
 * File:   UserApp.cpp
 * Author: ntanaka
 * 
 * Created on 2014/12/31, 0:19
 */

#include "UserApp.h"
#include "SystemCall_IF.h"
#include "Log.h"

namespace seL4 {

    UserApp::UserApp() {
    }

    //UserApp::UserApp(const UserApp& orig) {
    //}

    UserApp::~UserApp() {
    }

    void UserApp::doApp1() {
        SystemCall_IF syscall = SystemCall_IF::systemCall_IF;

        LOGMESSAGE("UserApp", "SystemCall_IF", "createThread");
        ThreadID src = syscall.createThread();
        LOGMESSAGE("UserApp", "SystemCall_IF", "createThread");
        ThreadID dest = syscall.createThread();
        LOGMESSAGE("UserApp", "SystemCall_IF", "runInitialThread");
        syscall.runInitialThread(src);
        Message message;
        LOGMESSAGE("UserApp", "SystemCall_IF", "sendIPC");
        syscall.sendIPC(src, dest, message);
        Log::function->close();
    }
}
