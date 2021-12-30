//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Aaron Ward on 2021-08-20.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework?{
        didSet{isShowingDetailedView = true}
    }
    
    
    
   @Published var isShowingDetailedView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
                              
}
