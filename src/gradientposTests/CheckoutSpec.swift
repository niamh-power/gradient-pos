import Quick
import Nimble


class CheckoutSpec: QuickSpec {
    
    override func spec() {
        describe("a dolphin") {
            describe("click") {
                context("When it's not near anything") {
                    it ("emits only one click") {
                        expect(true).to(equal(true))
                    }
                }
            }
        }
    }
}