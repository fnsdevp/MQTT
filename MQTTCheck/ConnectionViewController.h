//
//  ViewController.h
//  MQTTCheck
//
//  Created by FNSPL on 13/03/18.
//  Copyright © 2018 fnspl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MQTTClient.h"

@interface ViewController : UIViewController <MQTTSessionDelegate>
{
    MQTTCFSocketTransport *transport;
    MQTTSession *session;
}

@property(nonatomic, strong) IBOutlet UILabel *strConnectlbl;
@property(nonatomic, strong) IBOutlet UILabel *strSubscribelbl;
@property(nonatomic, strong) IBOutlet UITextField *txtConnect;
@property(nonatomic, strong) IBOutlet UITextField *txtSubscribe;



@end

