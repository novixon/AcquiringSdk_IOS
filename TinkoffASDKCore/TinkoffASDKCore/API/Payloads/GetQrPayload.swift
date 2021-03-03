//
//
//  GetQrPayload.swift
//
//  Copyright (c) 2021 Tinkoff Bank
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import Foundation

public struct GetQrPayload: Decodable {
    public let qrCodeData: String
    public let orderId: String
    public let paymentId: Int64
    
    private enum CodingKeys: CodingKey {
        case qrCodeData
        case orderId
        case paymentId
        
        var stringValue: String {
            switch self {
            case .qrCodeData: return APIConstants.Keys.qrCodeData
            case .orderId: return APIConstants.Keys.orderId
            case .paymentId: return APIConstants.Keys.paymentId
            }
        }
    }
    
    public init(qrData: String,
                orderId: String,
                paymentId: Int64) {
        self.qrCodeData = qrData
        self.orderId = orderId
        self.paymentId = paymentId
    }
}
