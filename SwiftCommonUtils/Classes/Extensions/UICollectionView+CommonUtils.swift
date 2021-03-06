//
//  UICollectionView+CommonUtils.swift
//  Pods
//
//  Created by Michael Henry Pantaleon on 2017/08/04.
//
//

import UIKit

public extension UICollectionView {
    
    public func registerHeader<T: UICollectionReusableView >(_: T.Type)
        where T:ReusableView, T:NibLoadableView {
            register(T.nib,
                     forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
                     withReuseIdentifier: T.reuseIdentifier)
    }
    
    public func register<T: UICollectionViewCell >(_: T.Type)
        where T:ReusableView, T:NibLoadableView {
            register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
}
