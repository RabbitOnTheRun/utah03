/* 
 * File:   Message.h
 * Author: ntanaka
 *
 * Created on 2014/12/30, 22:58
 */

#ifndef MESSAGE_H
#define	MESSAGE_H

namespace seL4 {

    class Message {
    public:
        Message();
        //Message(const Message& orig);
        virtual ~Message();
    private:

    };
}
#endif	/* MESSAGE_H */

