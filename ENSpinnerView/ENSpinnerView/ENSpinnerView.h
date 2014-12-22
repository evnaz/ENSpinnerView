//
//  ENSpinnerView.h
//  ENSpinnerView
//
//  Created by Evgeny on 22.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENSpinnerView : UIView
+ (instancetype)spinner;
- (void)startAnimating;
- (void)stopAnimating;
@end
