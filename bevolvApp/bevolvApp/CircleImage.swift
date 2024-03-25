import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        
        image
            .clipShape(Rectangle())
            .shadow(radius: 7)
            .frame(height: 80)
            .frame(width: 80)
        
    }
}

