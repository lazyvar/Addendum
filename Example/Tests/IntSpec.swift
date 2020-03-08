//
//  IntSpec.swift
//  Addendum_Tests
//
//  Created by mack on 3/8/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Addendum
import Quick
import Nimble

class IntSpec: QuickSpec {
  override func spec() {
    describe(".stringify()") {
      it("turns the Int into a String") {
        expect(0.stringify()).to(equal("0"))
        expect(1.stringify()).to(equal("1"))
        expect(333.stringify()).to(equal("333"))
        expect(8675309.stringify()).to(equal("8675309"))
        expect((-1 as Int).stringify()).to(equal("-1"))
        expect((-10 as Int).stringify()).to(equal("-10"))
      }
    }
  }
}
