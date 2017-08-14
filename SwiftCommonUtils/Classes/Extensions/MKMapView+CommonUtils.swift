//
//  MKMapView+CommonUtils.swift
//  Pods
//
//  Created by Michael on 2017/08/14.
//
//

import UIKit
import MapKit

extension MKMapView {
    
    func fitAllAnnotations(padding:UIEdgeInsets) {
        var zoomRect = MKMapRectNull;
        for annotation in annotations {
            let annotationPoint = MKMapPointForCoordinate(annotation.coordinate)
            let pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1);
            zoomRect = MKMapRectUnion(zoomRect, pointRect);
        }
        setVisibleMapRect(zoomRect, edgePadding: padding, animated: true)
    }
    
    func fitAllAnnotations() {
        fitAllAnnotations(padding: UIEdgeInsetsMake(30, 30, 30, 30))
    }
    
}
