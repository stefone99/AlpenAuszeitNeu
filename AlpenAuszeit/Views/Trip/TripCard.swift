import SwiftUI

struct TripCard: View {
    let trip: Trip
    @ObservedObject var viewModel: TripViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color("bergfex_button").opacity(0.8), Color("bergfex_button").opacity(0.4)]),
                        startPoint: .topLeading,
                        endPoint: .bottomLeading
                    )
                )
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text(viewModel.formattedDate(for: trip))
                        .font(.headline)
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Image(systemName: "train.side.front.car")
                        
                        Text("\(trip.stations.count) Stationen")
                            .font(.caption)
                    }
                }
                .foregroundColor(.white)
                
                Divider()
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(trip.departureTime)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(trip.from)
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 5) {
                        Text(trip.arrivalTime)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(trip.to)
                            .font(.subheadline)
                    }
                }
                .foregroundColor(.white)
                
                HStack {
                    Spacer()
                    Text("Details anzeigen")
                        .font(.caption)
                        .foregroundColor(.white)
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}
