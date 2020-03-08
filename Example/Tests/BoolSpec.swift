//
//  BoolSpec.swift
//  Addendum_Tests
//
//  Created by mack on 3/8/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Addendum
import Quick
import Nimble

class BoolSpec: QuickSpec {
  override func spec() {
    describe(".toggled()") {
      it("flips the bools value") {
        expect(true.toggled()).to(equal(false))
        expect(false.toggled()).to(equal(true))
      }
    }
  }
}
