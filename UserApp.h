/* 
 * File:   UserApp.h
 * Author: ntanaka
 *
 * Created on 2014/12/31, 0:19
 */

#ifndef USERAPP_H
#define	USERAPP_H

namespace seL4 {

    class UserApp {
    public:
        UserApp();
        //UserApp(const UserApp& orig);
        virtual ~UserApp();
        void doApp1();
    private:

    };
}
#endif	/* USERAPP_H */

