//
//  ViewController.m
//  mastermind
//
//  Created by Tarik Djebien on 06/02/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize saisie;
@synthesize resultats;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	nombreChoisi = arc4random() % 9000 + 1000;
}

- (void)viewDidUnload
{
    [self setSaisie:nil];
    [self setResultats:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)autrenombre:(id)sender {
    nombreChoisi = arc4random() % 9000 + 1000;
    resultats.text = [NSString stringWithFormat:@"%@",@"J'ai choisi un nouveau nombre\r"];
}

- (IBAction)saisieReturn:(id)sender {
    [sender resignFirstResponder];
    int bienPlace = 0;
    int charIndex;
    unichar testChar1, testChar2;
    
    for (charIndex = 0; charIndex < 4; charIndex++) {
        testChar1 = [saisie.text characterAtIndex:charIndex];
        testChar2 = [[NSString stringWithFormat:@"%d",nombreChoisi] characterAtIndex:charIndex];
        if (testChar1 == testChar2) {
            bienPlace++;
        }
    }
    
    resultats.text = [NSString stringWithFormat:@"%@%@%d%@%@", saisie.text, @" : Bien placés : ", bienPlace, @"\r",resultats.text];
    
    if (bienPlace == 4) {
        resultats.text = [NSString stringWithFormat:@"%@%d",@"Bravo, le résultat était ", nombreChoisi];
    }
}
@end
