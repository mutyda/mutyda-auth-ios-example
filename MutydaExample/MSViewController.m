//
//  MSViewController.m
//  MutydaExample
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 MeshSoft Ltd. All rights reserved.
//

#import "MSViewController.h"
#import "Mutyda.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)MutydaClick:(id)sender {
    
    NSString* appUrl=@"mutyda.com";
    NSString* appScheme=@"auth";
    
    NSString* appid=@"07122dfe-3916-981b-cd4e-b55c4e03892f";
    NSString* sid=@"18a2b988-06d5-44cc-9d19-29617ad0d5ce";
    
    Mutyda* m=[[Mutyda alloc] init];
    [m autenticationWithSID:sid appID:appid appScheme:appScheme appURL:appUrl];
}

@end
