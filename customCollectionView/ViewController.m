//
//  ViewController.m
//  customCollectionView
//
//  Created by Dong Quoc on 9/8/16.
//  Copyright © 2016 Dong Quoc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self initItems];
}


- (void)initItems
{
    NSLog(@"self.view.frame : %f", self.view.frame.size.width);
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    _collectionView=[[UICollectionView alloc] initWithFrame: CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100) collectionViewLayout:layout];
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    //[_collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [_collectionView registerNib:[UINib nibWithNibName:@"itemCell" bundle:nil] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [self.view addSubview:_collectionView];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 25;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    CGRect gameIconSize = CGRectMake(0, 0, 110, 146);
    //CGRect freeiconSize = CGRectMake(0, 0, 35, 35);
    
    //CollectionViewCell *cell = (CollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    itemCell *cell = (itemCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    //NSString *encodedURLString = [[listGames objectAtIndex:(int)indexPath.row][@"img"] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    //cell.image.center = cell.center;
    //cell.image.frame = gameIconSize;
    //[cell.image  sd_setImageWithURL:[NSURL URLWithString:encodedURLString]placeholderImage:[UIImage imageNamed:@"items_holder.png"]];
    
    cell.image.image = [UIImage imageNamed:@"item.jpg"];
    cell.image.clipsToBounds = YES;
    cell.image.contentMode = UIViewContentModeScaleToFill;
    //    [cell.image1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playgame_action:)]];
    //    [cell.image1 setUserInteractionEnabled:YES];
    cell.image.backgroundColor = [UIColor cyanColor];
    cell.image.tag = (int)indexPath.row;
    
    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"indexPath.row : %d", (int) indexPath.row);
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    float screenwidth = [UIScreen mainScreen].bounds.size.width;
    
    if (screenwidth<414) {
        NSLog(@"item w: %f", screenwidth/2);
        return CGSizeMake(screenwidth/2, (18/14)*screenwidth/2);
    } else if (screenwidth>=414&&screenwidth<768){
        NSLog(@"item w: %f", screenwidth/3);
        return CGSizeMake(screenwidth/3, (19/16)*screenwidth/3);
    } else {
        NSLog(@"item w: %f", screenwidth/4);
        return CGSizeMake(screenwidth/4, (19/16)*screenwidth/4);
    }
    
    
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}




@end
