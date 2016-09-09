//
//  ViewController.h
//  customCollectionView
//
//  Created by Dong Quoc on 9/8/16.
//  Copyright © 2016 Dong Quoc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "itemCell.h"
#import "UIView+Shake.h"

@interface collectionView : UIViewController  <UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, UIGestureRecognizerDelegate>{
    UICollectionView *_collectionView;
    NSMutableArray *myItems;
}


@end

