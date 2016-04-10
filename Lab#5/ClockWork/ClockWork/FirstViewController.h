//
//  FirstViewController.h
//  ClockWork
//
//  Created by Viktor on 3/5/16.
//  Copyright © 2016 HomeDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    __weak IBOutlet UILabel *countDownLabel;
}
- (IBAction)startTimer:(id)sender;
- (IBAction)resetTimer:(id)sender;

@end

