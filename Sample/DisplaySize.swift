//
//  DisplaySize.swift
//  Sample
//
//  Created by Takayuki Sakamoto on 2026/02/26.
//

import Foundation

enum DisplaySize: String, CaseIterable, Identifiable {
    case compact
    case standard
    case large
    
    var id: String {
        rawValue
    }
    
    var title: String {
        switch self {
        case .compact: return "コンパクト"
        case .standard: return "標準"
        case .large: return "大"
        }
    }
    
    /// 実際にUIで使うスケール値
    var scale: CGFloat {
        switch self {
        case .compact: return 0.9
        case .standard: return 1.0
        case .large: return 1.2
        }
    }
}
