//
//  InterfaceController.m
//  SmartmongolWatch WatchKit Extension
//
//  Created by Enkhjargal Gansukh on 3/23/15.
//
//

#import "InterfaceController.h"


@interface InterfaceController()
    @property (weak, nonatomic) IBOutlet WKInterfaceLabel *responsedDataLabel;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
//    NSLog(@"HEHEH");
    
    wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.smartmongol"
                                                    optionalDirectory:@"wormhole"];
    
    [wormhole listenForMessageWithIdentifier:@"testChannel" listener:^(id message) {
        [self.responsedDataLabel setText:(NSString*)message];
        
//        NSString *response = [NSString stringWithFormat:@"%d",arc4random_uniform(50)];
//        [self.responsedDataLabel setText:(NSString*)response];
//        
//        [wormhole passMessageObject:response identifier:@"responseChannel"];
    }];

}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



