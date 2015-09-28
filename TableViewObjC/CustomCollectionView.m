//
//  CustomCollectionView.m
//  TableViewObjC
//
//  Created by hoang dang trung on 9/19/15.
//  Copyright (c) 2015 hoang dang trung. All rights reserved.
//

#import "CustomCollectionView.h"

@interface CustomCollectionView ()

@end

@implementation CustomCollectionView

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.collectionView registerNib:[UINib nibWithNibName:@"CustomCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"CELL"];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (CustomCollectionCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"cell %li",(long)indexPath.row];
    return cell;
}

//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//    MyCell *cell = (MyCell*)[collectionView cellForItemAtIndexPath:indexPath];
//    NSArray *views = [cell.contentView subviews];
//    UILabel *label = [views objectAtIndex:0];
//    NSLog(@"Select %@",label.text);
//}


@end
