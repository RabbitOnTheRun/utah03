/* 
 * File:   Log.h
 * Author: ntanaka
 *
 * Created on 2015/01/02, 0:16
 */

#ifndef LOG_H
#define	LOG_H

#include <string>
#include <fstream>
#include <mutex>
namespace seL4 {

#define LOGFUNC Log::function->methodCall(__FILE__, __FUNCTION__)
#define LOGMESSAGE(from_, to_ , event_) Log::function->message(from_, to_, event_)
#define LOGLINE Log::function->line(__FILE__, __FUNCTION__, __LINE__)
#define LOGVALUE(name_, value_) Log::function->value(__FILE__, __FUNCTION__, name_, (value_));
#define LOGERROR(error_) Log::function->error(__FILE__,(error_));
    
    class Log {
    public:
        Log();
        //Log(const Log& orig);
        virtual ~Log();

        Log(std::string fileName);
        static Log* sequence;
        static Log* function;


        void message(const std::string& from, const std::string& to, const std::string& event);
        void state(const std::string& stateMachine, const std::string& state);
        void methodCall(const std::string& file, const std::string& functionName);
        void line(const std::string& file, const std::string& functionName, int lineNum);
        void value(const std::string& file, const std::string& functionName, const std::string& valueName, const std::string& value);
        void close();
        void error(const std::string& file, const std::string& errorMessage);

    private:
        void write(const std::string& message);
        std::ofstream ofs;
        std::mutex mutexVar;
    };
}
#endif	/* LOG_H */

