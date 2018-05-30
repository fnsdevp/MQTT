//
//  ViewController.m
//  MQTTCheck
//
//  Created by FNSPL on 13/03/18.
//  Copyright © 2018 fnspl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    transport = [[MQTTCFSocketTransport alloc] init];
    transport.host = @"localhost";
    transport.port = 1883;
    
    session = [[MQTTSession alloc] init];
    session.transport = transport;
    
    session.delegate = self;
    
    [session connectAndWaitTimeout:30];  //this is part of the synchronous API
    
}


-(void)subscribe:(NSString *)strTopic
{
    [session subscribeToTopic:strTopic atLevel:2 subscribeHandler:^(NSError *error, NSArray<NSNumber *> *gQoss){
        
        if (error) {
            
            NSLog(@"Subscription failed %@", error.localizedDescription);
            
        } else {
            
            NSLog(@"Subscription sucessfull! Granted Qos: %@", gQoss);
            
        }
    }]; // this is part of the block API
    
    // topic = @"example/#"
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
