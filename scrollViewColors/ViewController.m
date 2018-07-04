//
//  ViewController.m
//  scrollViewColors
//
//  Created by paul on 7/3/18.
//  Copyright © 2018 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    self.view.backgroundColor = UIColor.yellowColor;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if ([[NSNumber numberWithDouble:self.scrollView.contentOffset.x] isEqual:[NSNumber numberWithDouble: 240]]) {
        self.view.backgroundColor = UIColor.redColor;
    } else if ([[NSNumber numberWithDouble:self.scrollView.contentOffset.x] isEqual:[NSNumber numberWithDouble: 0]]){
        self.view.backgroundColor = UIColor.yellowColor;
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
