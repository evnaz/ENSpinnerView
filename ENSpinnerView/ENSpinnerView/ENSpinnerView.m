//
//  ENSpinnerView.m
//  ENSpinnerView
//
//  Created by Evgeny on 22.12.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

#import "ENSpinnerView.h"

#define SPINNER_VIEW_HEIGHT 25.f
#define SPINNER_COLOR_BASE [UIColor colorWithRed:0.133 green:0.255 blue:0.647 alpha:1]
#define SPINNER_COLOR_SPINNER [UIColor colorWithRed:0.957 green:0.827 blue:0.098 alpha:1];

@interface ENSpinnerView()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) UIView *spinner;
@end

@implementation ENSpinnerView

+ (instancetype)spinner {
    return [[[self class] alloc] init];
}

- (instancetype)initWithFrame:(CGRect)frame {
    return [[[self class] alloc] init];
}

- (instancetype)init {
    if (self = [super initWithFrame:CGRectMake(0, 0, SPINNER_VIEW_HEIGHT, SPINNER_VIEW_HEIGHT)]) {
        [self configureView];
        return self;
    }
    
    return nil;
}

- (void)configureView
{
    UIImage *_maskingImage = [UIImage imageNamed:@"small_loader_circle"];
    self.frame = CGRectMake(0, 0, _maskingImage.size.width, _maskingImage.size.height);
    CALayer *_maskingLayer = [CALayer layer];
    _maskingLayer.frame = self.bounds;
    [_maskingLayer setContents:(id)[_maskingImage CGImage]];
    [self.layer setMask:_maskingLayer];
    self.backgroundColor = SPINNER_COLOR_BASE;
    
    UIImage *_maskingImage1 = [UIImage imageNamed:@"small_loader_triangle"];
    _spinner = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _maskingImage1.size.width, _maskingImage1.size.height)];
    CALayer *_maskingLayer1 = [CALayer layer];
    _maskingLayer1.frame = self.spinner.bounds;
    [_maskingLayer1 setContents:(id)[_maskingImage1 CGImage]];
    [self.spinner.layer setMask:_maskingLayer1];
    self.spinner.layer.anchorPoint = CGPointMake(0.5, 1);
    self.spinner.backgroundColor = UIColor.redColor;
    self.spinner.center = CGPointMake(self.bounds.size.width/2.0f, self.bounds.size.height/2.0f);
    self.spinner.backgroundColor = SPINNER_COLOR_SPINNER;
    [self addSubview:self.spinner];
    
    [self setHidden:YES];
}

#pragma mark - Timer
- (void)rotateView
{
    self.spinner.transform = CGAffineTransformRotate(self.spinner.transform,3.2f*M_PI/180.f);
}


#pragma mark - Public methods
- (void)startAnimating
{
    if (!self.timer)
        self.timer = [NSTimer scheduledTimerWithTimeInterval:.01
                                                      target:self
                                                    selector:@selector(rotateView)
                                                    userInfo:nil
                                                     repeats:YES];
    [self setHidden:NO];
}

- (void)stopAnimating
{
    if ([self.timer isValid])
        [self.timer invalidate];
    self.timer = nil;
    [self setHidden:YES];
}

@end
