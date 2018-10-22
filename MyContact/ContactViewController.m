//
//  ContactViewController.m
//  MyContact
//
//  Created by Julien on 11/10/2018.
//  Copyright © 2018 Julien. All rights reserved.
//

#import "ContactViewController.h"
#import "ContactTableViewCell.h"
#import "ContactObj.h"

@interface ContactViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet    UILabel     *titleLbl;
@property (nonatomic, weak) IBOutlet    UITableView *tableView;
@property (nonatomic, strong)             NSArray     *dataSource;
@property (nonatomic, strong)             NSArray     *dataSource2;
@property (nonatomic, strong)           ContactObj *contact;

@end

@implementation ContactViewController


#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do not remove that line
    //self.dataSource = [[NSArray alloc] initWithObjects:@"Robert", @"Bernard", @"Julien", @"Cyril", @"Freddy", @"Jean-Jean", @"TomTom", @"Barbara", nil];
    
    ContactObj *contact1 = [ContactObj new];
    contact1.prenom = @"Toto";
    contact1.nom = @" Tata";
    
    ContactObj *contact2 = [ContactObj new];
    contact2.prenom = @"Robert";
    contact2.nom = @" Roberto";
    
    ContactObj *contact3 = [ContactObj new];
    contact3.prenom = @"Bernard";
    contact3.nom = @" Bernado";
    
    self.dataSource2 = [[NSArray alloc] initWithObjects:contact1.nom, contact2.nom, contact3.nom, nil];
    [self.titleLbl setText:@"My Contacts"];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataSource2 count];
    //return [self.contact count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ContactTableViewCell *contactCell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    
    [contactCell.nameLbl setText:self.dataSource2[indexPath.row]];
    //[contactCell.prenomLbl setText:self.dataSource2[indexPath.row]];
    //[contactCell.nameLbl setText:self.contact[indexPath.row]];
    //NSLog(@"%@", (NSString *) self.dataSource);
    
    return contactCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"Section:%ld Row:%ld selected and its data is %@",
          (long)indexPath.section,(long)indexPath.row,self.dataSource2[indexPath.row]);
}
#pragma mark - UITableViewDelegate

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

