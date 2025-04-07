import SwiftUI

struct HikingListView: View {
    @ObservedObject var viewModel: HikingViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(viewModel.hikes) { hike in
                    NavigationLink(destination: HikingDetailView(hike: hike)) {
                        HikingCard(hike: hike)
                            .padding(.horizontal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.vertical)
        }
    }
}
