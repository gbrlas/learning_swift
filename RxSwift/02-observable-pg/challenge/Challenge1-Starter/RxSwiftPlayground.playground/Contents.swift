//: Please build the scheme 'RxSwiftPlayground' first
import RxSwift

example(of: "never") {
    
    let disposeBag = DisposeBag()
    let observable = Observable<Any>.never()

    observable
        .do(onSubscribed: {
            print("Subscribed to this observable")
        })
        .subscribe(
          onNext: { element in
            print(element)
            },
              onCompleted: {
                print("Completed")
            },
              onDisposed: {
                print("Disposed")
            }
        ).disposed(by: disposeBag)
}
