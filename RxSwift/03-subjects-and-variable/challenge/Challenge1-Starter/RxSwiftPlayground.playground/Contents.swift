//: Please build the scheme 'RxSwiftPlayground' first
import RxSwift

example(of: "PublishSubject") {
  
  let disposeBag = DisposeBag()
  
  let dealtHand = PublishSubject<[(String, Int)]>()
  
  func deal(_ cardCount: UInt) {
    var deck = cards
    var cardsRemaining: UInt32 = 52
    var hand = [(String, Int)]()
    
    for _ in 0..<cardCount {
      let randomIndex = Int(arc4random_uniform(cardsRemaining))
      hand.append(deck[randomIndex])
      deck.remove(at: randomIndex)
      cardsRemaining -= 1
    }
    
    // Add code to update dealtHand here
    if points(for: hand) > 21 {
        dealtHand.onError(HandError.busted)
    } else {
        dealtHand.onNext(hand)
    }
  }
  
  // Add subscription to dealtHand here
  dealtHand
    .subscribe(
        onNext: { hand in
            print("Cards: \(cardString(for: hand)), points: \(points(for: hand))")
        },
        onError: { error in
            print(error)
        }
    )
  
  deal(3)
}

