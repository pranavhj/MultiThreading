

#include <iostream>

#include <thread>
#include <mutex>
#include <vector>
#include <string>
#include <fstream>



using namespace std;

void simple(int val);
void PassByRefChecker(int &val);

class Fctor{
	public:
		void operator()(string& msg);
};


class LogFile{
	private:
		std::mutex m1;
		std::ofstream f;
	public:
		LogFile(){
			f.open("/home/pranav/MultiThreading/src/log.txt");
		}

		void shared_print(string s,int i ){
			std::lock_guard<mutex> locker(m1);
			// we can do m.lock(); 
			//do work
			//m.unlock();
			//we dont do bcs if there is exception in work mutex might never unlock

			f<<s<<" "<<i<<endl;
		}


};

void MutexTester();
void MutexTester1();
void shared_print(string s,int i );

std::mutex m;

int main()
{ 	 
    /////////Checking normal threading
    cout<<"Main thread ID is "<<this_thread::get_id()<<endl;

    thread t1(simple,10);

    try{
	    for(int i=0;i<10;i++){
	    	cout<<"From main:"<<i<<endl;
	    	//throw "";
	    }
	}
	catch(...){
		cout<<"Catch"<<endl;
		if(t1.joinable()){
			t1.join();
		}
		else{
			cout<<"Inside catch but not joinable"<<endl;
		}
	}


    if (t1.joinable()){
    	t1.join();
    }
    else{
    	cout<<"Outside catch but not joinable"<<endl;
    }
	





	//////////Checking Pass By reference

    int value=0;
	thread t2(PassByRefChecker,std::ref(value));
	if (t2.joinable()){
    	t2.join();
    }
    else{
    	cout<<"Outside catch but t2 not joinable"<<endl;
    }

    cout<<"Value after thread execution: "<<value<<endl;

    //////////// Check Operator Overloading
    string msg=" Hi hello";
    thread t3(Fctor(),ref(msg));
    t3.join();
    cout<<"New msg is: "<<msg<<endl;



    ///
    thread::hardware_concurrency();



    ///////////////////////////////
    // Mutex


    thread t4(MutexTester);

    for(int i=0;i<100;i++){
    	shared_print("main thread",i);
    }
    t4.join();




    ////////////////////////////
    // Mutex with class
    cout<<"#################################"<<endl;
    cout<<"Start with mutex tester with class"<<endl;
    LogFile log;
    thread t6(MutexTester1,ref(log));

    // for(int i=0;i<100;i++){
    // 	log.shared_print("main thread",i);
    // }
    //t6.join();


    return 0;
}

void simple(int val){
	
	
	for(int i=0;i<val;i++){
    	cout<<"From thread:"<<i<<endl;

    }


}


void PassByRefChecker(int &val){
	cout<<"Before Val in func :"<<val<<endl;
	val+=1;
	cout<<"After Val in func :"<<val<<endl;

}


void Fctor::operator()(string& msg){
			cout<<"Thread "<<this_thread::get_id()<<" says "<<msg<<endl;
			msg="adding msg "+msg;
		}


void MutexTester(){
	for(int i=0;i<100;i++){
		shared_print("mutex thread:",i);
	}

}


void MutexTester1(LogFile& log){
	for(int i=0;i<100;i++){
		log.shared_print("mutex thread 1 :",i);
	}

}



void shared_print(string s,int i ){
	std::lock_guard<mutex> locker(m);
	// we can do m.lock(); 
	//do work
	//m.unlock();
	//we dont do bcs if there is exception in work mutex might never unlock

	cout<<s<<" "<<i<<endl;


}


//The mutex lock_guard is used when we want to protect one resource
// if we want any thread to use that only one at a time
// in this case cout is the resourc
//if no lock guard and mutex there might be mixing of cout prints 
//with this we can ensure that cout is used one at a time
// this is useful when we use something like fstream
