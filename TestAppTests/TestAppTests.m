//
//  TestAppTests.m
//  TestAppTests
//
//  Created by jenkins on 14/03/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestAppTests : XCTestCase

@end

@implementation TestAppTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{

#define MACRO_NAME(f) #f
#define MACRO_VALUE(f) MACRO_NAME(f)
    
//PARAM 1
bool crash_on_demand;
#ifdef CRASH_ON_DEMAND
    crash_on_demand = CRASH_ON_DEMAND;
#else
    crash_on_demand = @"UNKNOWN";
#endif
NSLog(@"CRASH_ON_DEMAND: %u",crash_on_demand);

//PARAM 2
NSString *clientPropertiesUrl;
#if defined CLIENT_PROPERTIES_URL
    clientPropertiesUrl = [@MACRO_VALUE(CLIENT_PROPERTIES_URL) stringByReplacingOccurrencesOfString:@" " withString:@""];
#else
    clientPropertiesUrl = @"UNKNOWN";
#endif
    
    NSLog(@"CLIENT_PROPERTIES_URL: %@",clientPropertiesUrl);
    
//PARAM 3
bool test_video_monitor;
#ifdef TEST_VIDEO_MONITOR
    test_video_monitor = TEST_VIDEO_MONITOR;
#else
    test_video_monitor = @"UNKNOWN";
#endif
NSLog(@"TEST_VIDEO_MONITOR: %u",test_video_monitor);

    
}

@end
