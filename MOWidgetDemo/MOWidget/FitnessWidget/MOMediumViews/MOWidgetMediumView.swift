//
//  MOMediumView.swift
//  MOWidgetDemo
//
//  Created by 莫晓卉 on 2020/12/23.
//

import SwiftUI

struct MOMediumView: View {
  let activities: [Bool]
  let exercises: [Float]
  let steps: [Float]

  var body: some View {
    HStack(spacing: 0) {
      VStack(alignment: .leading) {
        MOActivitiesView(activities: activities)
          .frame(width: kScale() * 138, height: kScale() * 30)
        Spacer().frame(height:kScale() * 10)
        MOExcercisesView(exercises: exercises)
          .frame(width: kScale() * 138, height: kScale() * 30)
        Spacer().frame(height:kScale() * 10)
        MOStepsView(steps: steps)
          .frame(width: kScale() * 138, height: kScale() * 30)
        MOTimeView()
      }
      .padding()
      .padding(.leading, -16)
      Spacer()
    }
  }
}

struct MOTimeView: View {
  let timeUnits: String = NSLocalizedString("widget.timeUnits", comment: "时")
  var body: some View {
    HStack(spacing: 0) {
      Text("0\(timeUnits)")
        .font(.caption2)
        .frame(width: kScale() * 34.5, height: 10, alignment: .leading)
      Text("6\(timeUnits)")
        .font(.caption2)
        .frame(width: kScale() * 34.5, height: 10, alignment: .leading)
      Text("12\(timeUnits)")
        .font(.caption2)
        .frame(width: kScale() * 34.5, height: 10, alignment: .leading)
      Text("18\(timeUnits)")
        .font(.caption2)
        .frame(width: kScale() * 34.5, height: 10, alignment: .leading)
    }
  }
}