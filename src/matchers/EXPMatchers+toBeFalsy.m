// Expecta - EXPMatchers+toBeFalsy.m
// Copyright (c) 2011 Peter Jihoon Kim
// Licensed under the MIT License.

#import "EXPMatchers+toBeFalsy.h"
#import "EXPMatcherHelpers.h"

EXPMatcherImplementationBegin(toBeFalsy, (void)) {
  match(^BOOL{
    if([actual isKindOfClass:[NSNumber class]]) {
      return ![(NSNumber *)actual boolValue];
    } else if([actual isKindOfClass:[NSValue class]]) {
      if(EXPIsValuePointer((NSValue *)actual)) {
        return ![(NSValue *)actual pointerValue];
      }
    }
    return !actual;
  });

  failureMessageForTo(^NSString *{
    return [NSString stringWithFormat:@"expected: a falsy value, got: %@, which is truthy", EXPDescribeObject(actual)];
  });

  failureMessageForNotTo(^NSString *{
    return [NSString stringWithFormat:@"expected: a non-falsy value, got: %@, which is falsy", EXPDescribeObject(actual)];
  });
}
EXPMatcherImplementationEnd
