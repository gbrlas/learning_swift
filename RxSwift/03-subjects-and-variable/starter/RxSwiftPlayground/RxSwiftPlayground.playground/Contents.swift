//: Please build the scheme 'RxSwiftPlayground' first
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


example(of: "PublishSubject") {
    let subject = PublishSubject<String>()
    
    subject.onNext("Is anyone listening?")
    
    let subscriptionOne = subject
        .subscribe(onNext: { string in
            print(string)
        })
    
    subject.on(.next("1"))
    subject.onNext("2")
    
    let subscriptionTwo = subject
        .subscribe { event in
            print("2)", event.element ?? event)
        }
    
    subject.onNext("3")
    
    subscriptionOne.dispose()
    
    subject.onNext("4")
    subject.onCompleted()
    subject.onNext("5")
    
    subscriptionTwo.dispose()
    
    let disposeBag = DisposeBag()
    
    subject
        .subscribe {
            print("3)", $0.element ?? $0)
        }
        .disposed(by: disposeBag)
    
    subject.onNext("?")
    
    enum MyError: Error {
        case anError
    }
    
    func myPrint<T: CustomStringConvertible>(label: String, event: Event<T>) {
        print(label, event.element ?? event.error ?? event)
    }
    
    example(of: "BehaviorSubject", action: {
        let subject = BehaviorSubject(value: "Initial value")
        let disposeBag = DisposeBag()
        
        subject.onNext("X")
        
        subject
            .subscribe {
                myPrint(label: "1)", event: $0)
            }
            .disposed(by: disposeBag)
        
        subject.onError(MyError.anError)
        
        subject
            .subscribe {
                myPrint(label: "2)", event: $0)
            }
            .disposed(by: disposeBag)
    })
    
    example(of: "ReplaySubject", action: {
        let subject = ReplaySubject<String>.create(bufferSize: 2)
        let disposeBag = DisposeBag()
        
        subject.onNext("1")
        subject.onNext("2")
        subject.onNext("3")
        
        subject
            .subscribe {
                myPrint(label: "1)", event: $0)
            }
            .disposed(by: disposeBag)
        
        subject
            .subscribe {
                myPrint(label: "2)", event: $0)
            }
            .disposed(by: disposeBag)
        
        subject.onNext("4")
        
        subject.onError(MyError.anError)
        subject.dispose()
        
        subject
            .subscribe {
                myPrint(label: "3)", event: $0)
            }
            .disposed(by: disposeBag)
    })
    
    example(of: "Variable", action: {
        let variable = Variable("Initial value")
        let disposeBag = DisposeBag()
        
        variable.value = "New initial value"
        
        variable.asObservable()
            .subscribe {
                myPrint(label: "1)", event: $0)
            }
            .disposed(by: disposeBag)
        
        variable.value = "1"
        
        variable.asObservable()
            .subscribe {
                myPrint(label: "2)", event: $0)
            }
            .disposed(by: disposeBag)
        
        variable.value = "2"
    })
}
