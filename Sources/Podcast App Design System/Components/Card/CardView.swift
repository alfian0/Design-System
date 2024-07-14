//
//  SwiftUIView.swift
//  
//
//  Created by alfian on 14/07/24.
//

import SwiftUI

public struct CardView: View {
  let model: Model
  
  public struct Model: Identifiable {
    public let id: String = UUID().uuidString
    public let title: String
    public let date: String
    public let duration: String
    public let like: Int
    public let image: Image
    
    public init(title: String, date: String, duration: String, like: Int, image: Image) {
      self.title = title
      self.date = date
      self.duration = duration
      self.like = like
      self.image = image
    }
    
    public struct Image: Identifiable {
      public let id: String = UUID().uuidString
      public let image: UIImage
      public let url: String?
      
      public init(image: UIImage, url: String?) {
        self.image = image
        self.url = url
      }
    }
  }
  
  public init(model: Model) {
    self.model = model
  }
  
  public var body: some View {
      ZStack {
        Color.backgroundMuted
        
        HStack(spacing: Spacing.small) {
          Image(uiImage: model.image.image)
            .frame(width: 68, height: 68)
            .cornerRadius(10)
          
          VStack(alignment: .leading, spacing: Spacing.medium) {
            Text(model.title)
              .font(.notoSans(.medium, size: 14))
              .multilineTextAlignment(.leading)
              .foregroundColor(.foregroundDefault)
//                .font(.Label.l)
            
            HStack {
              HStack(spacing: 2) {
                Text(model.date)
                  .font(.Label.m)
                  .foregroundColor(.foregroundMuted)
                Text("·")
                  .font(.Label.m)
                  .foregroundColor(.foregroundMuted)
                Text(model.duration)
                  .font(.Label.m)
                  .foregroundColor(.foregroundMuted)
              }
              
              Spacer()
              
              HStack(spacing: 4) {
                Text("\(model.like)")
                  .font(.Label.m)
                  .foregroundColor(.foregroundMuted)
                
                Image("ic_like")
                  .frame(width: 12, height: 12)
              }
            }
          }
        }
        .padding(Spacing.medium)
      }
      .fixedSize(horizontal: false, vertical: true)
      .cornerRadius(14)
    }
}
