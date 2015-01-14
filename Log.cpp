/* 
 * File:   Log.cpp
 * Author: ntanaka
 * 
 * Created on 2015/01/02, 0:16
 */

#include <string>
#include <iostream>
#include <mutex>
#include "Log.h"

namespace seL4 {
    Log* Log::sequence = new Log("sequenceLog.txt");
    Log* Log::function = new Log("functionCallLog.txt");

    Log::Log() {
    }

    //Log::Log(const Log& orig) {
    //}

    Log::~Log() {
        write("\n@enduml\n");
    }

    Log::Log(const std::string fileName) {
        ofs.open(fileName);
        if (ofs.fail()) {
            throw std::exception();
            // should be avoid dual direction dependency
        }
        write("@startuml\n");
    }

    void Log::message(const std::string& from, const std::string& to, const std::string& event) {
        //write(from + " -> " + to + " : " + event + "\n");
        write(from + " -> " + to + " : " + event + "\n");
    }


    void Log::state(const std::string& stateMachine, const std::string& state) {
        write("hnote over " + stateMachine + " : " + state + "\n");
    }

    void Log::methodCall(const std::string& file, const std::string& functionName) {
        write(file + "::" + functionName + " called\n");
    }

    void Log::line(const std::string& file, const std::string& functionName, int lineNum) {
        write(file + "::" + functionName + "::" + /*std::to_string(lineNum) + */ " visited\n");
    }

    void Log::value(const std::string& file, const std::string& functionName, const std::string& valueName, const std::string& value) {
        write(file + "::" + functionName + "::" + valueName + " = " + value + "\n");
    }

    void Log::close() {
        ofs.close();
    }

    void Log::error(const std::string& file, const std::string& errorMessage) {
        write(file + "::" + errorMessage + " \n");
    }

    void Log::write(const std::string& message) {
        std::lock_guard<std::mutex> m_v(mutexVar);
        ofs << message; // mutex please
        ofs.flush();
    }


}