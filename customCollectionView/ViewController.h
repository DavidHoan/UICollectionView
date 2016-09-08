//
//  ViewController.h
//  customCollectionView
//
//  Created by Dong Quoc on 9/8/16.
//  Copyright © 2016 Dong Quoc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "itemCell.h"


@interface ViewController : UIViewController  <UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>{
    UICollectionView *_collectionView;
}


@end

