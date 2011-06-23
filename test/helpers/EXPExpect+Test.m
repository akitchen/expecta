// Expecta - EXPExpect+Test.m
// Copyright (c) 2011 Peter Jihoon Kim
// Licensed under the MIT License.

#import "EXPExpect+Test.h"
#import "FakeTestCase.h"

@implementation EXPExpect (Test)

- (EXPExpect *)test {
  self.testCase = [[FakeTestCase new] autorelease];
  self.lineNumber = 123;
  self.fileName = "foo.m";
  return self;
}

@end
