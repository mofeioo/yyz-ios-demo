//
//  PresonB.h
//  Delegate
//
//  Created by ewr on 18/5/16.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol buySth <NSObject>

-(void) buyShit;

@end
@interface PresonB : NSObject<buySth>

@end
