//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Aaron Ward on 2021-08-19.
//

import SwiftUI


struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
   
    var body: some View {
        NavigationView{
        
                List{
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework,
                                isShowingDetailView: $viewModel.isShowingDetailedView)){
                            FrameworkTitleView(framework: framework)

                        }
                           
                        
                    }
            }
            
            .navigationTitle("🍎 Frameworks")
            .fullScreenCover(isPresented: $viewModel.isShowingDetailedView){
                FrameworkDetailView(framework: viewModel.selectedFramework
                                        ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailedView)
            }
            
                
           
            

        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
    
    
    
}

struct FrameworkTitleView: View	 {
    let framework: Framework
    
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                .padding()
        }
        
    }
    
}
