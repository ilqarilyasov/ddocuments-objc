//
//  IIIDocumentsTableViewController.m
//  DdocumentsObjc
//
//  Created by Ilgar Ilyasov on 3/27/19.
//  Copyright © 2019 Fun-the-mental. All rights reserved.
//

#import "IIIDocumentsTableViewController.h"
#import "../Model Controllers/IIIDocumentController.h"
#import "../Model/IIIDocument.h"
#import "../View Controllers/IIIDocumentDetailViewController.h"


@implementation IIIDocumentsTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self documentController] countOfDocument];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentCell" forIndexPath:indexPath];
    IIIDocument *document = [[[self documentController] documents] objectAtIndex:[indexPath row]];
    [[cell textLabel] setText: [document title]];
    
    NSNumber *wordCount = [NSNumber numberWithInteger:[document wordCount]];
    NSString *wordCountStr = [wordCount stringValue];
    NSString *detailStr = [NSString stringWithFormat:@"%@", wordCountStr];
    [[cell detailTextLabel] setText: detailStr];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSInteger index = [[[self tableView] indexPathForSelectedRow] row];
        IIIDocument *document = [[[self documentController] documents] objectAtIndex: index];
        [[self documentController] deleteDocument: document];
        [[self tableView] deleteRowsAtIndexPaths: @[indexPath] withRowAnimation: UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString: @"ShowCreateDocument"]) {
        
        IIIDocumentDetailViewController *destinationVC = [segue destinationViewController];
        [destinationVC setDocumentController: [self documentController]];
        
    } else if ([[segue identifier] isEqualToString: @"ShowDocumentDetail"]) {
        
        IIIDocumentDetailViewController *destinationVC = [segue destinationViewController];
        [destinationVC setDocumentController: [self documentController]];
        
        NSIndexPath *indexPath = [[self tableView] indexPathForSelectedRow];
        IIIDocument *document = [[[self documentController] documents] objectAtIndex:[indexPath row]];
        [destinationVC setDocument: document];
    }
}

@synthesize documentController = _documentController;

- (IIIDocumentController *)documentController
{
    if (!_documentController) {
        _documentController = [[IIIDocumentController alloc] init];
    }
    
    return _documentController;
}

@end
