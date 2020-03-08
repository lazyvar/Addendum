//
//  CollectionSpec.swift
//  Addendum_Tests
//
//  Created by mack on 3/8/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Addendum
import Quick
import Nimble

class CollectionSpec: QuickSpec {
  override func spec() {
    describe("[safe:]") {
      let collection: [String] = []
      
      context("collection is empty") {
        it("returns nil") {
          expect(collection[safe: 0]).to(beNil())
        }
      }
      
      context("collection has some items and access is within bounds") {
        let collection: [String] = ["a", "b", "c"]
        
        it("returns the value") {
          expect(collection[safe: 0]).to(equal("a"))
          expect(collection[safe: 1]).to(equal("b"))
          expect(collection[safe: 2]).to(equal("c"))
        }
      }
      
      context("collection has some items and access is outside bounds") {
        let collection: [String] = ["a", "b", "c"]
        
        it("returns nil") {
          expect(collection[safe: -1]).to(beNil())
          expect(collection[safe: 3]).to(beNil())
        }
      }
    }
    
    describe(".first<T>()") {
      context("does not contain the type") {
        let collection: [UIViewController] = [UIViewController()]
        
        it("returns nil") {
          expect(collection.first(ofType: UINavigationController.self)).to(beNil())
        }
      }

      context("does contain the type") {
        let nav = UINavigationController()
        let collection: [UIViewController] = [nav]
        
        it("returns nil") {
          expect(collection.first(ofType: UINavigationController.self)).to(equal(nav))
        }
      }
    }
  }
}
