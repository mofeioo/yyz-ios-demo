//
//  ViewController.h
//  tableDemo2
//
//  Created by mofeio o on 18/5/11.
//  Copyright © 2018年 mofeioo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *_rowLanguage;
    NSMutableArray *_arrayHeros;
}

@end

