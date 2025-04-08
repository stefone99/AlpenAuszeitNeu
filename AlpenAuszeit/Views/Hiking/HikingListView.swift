import SwiftUI

struct HikingListView: View {
    @ObservedObject var viewModel: HikingViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(viewModel.hikes) { hike in
                    NavigationLink(destination: HikingDetailView(hike: hike, viewModel: viewModel)) {
                        HikingCard(hike: hike, viewModel: viewModel)
                            .padding(.horizontal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.vertical)
        }
    }
}

// Preview
struct HikingListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HikingListView(viewModel: HikingViewModel())
                .navigationTitle("Wanderungen")
        }
    }
}
