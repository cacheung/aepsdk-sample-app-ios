/*
 Copyright 2020 Adobe
 All Rights Reserved.
 
 NOTICE: Adobe permits you to use, modify, and distribute this file in
 accordance with the terms of the Adobe license agreement accompanying
 it.
----
 XDM Schema Swift Object Generated 2020-07-17 14:52:38.217262 -0700 PDT m=+2.050700202 by XDMTool

 Title			:	Mobile SDK Commerce Schema
 Version		:	1.0
 Description	:	
 Type			:	schemas
----
*/

import Foundation

//step-edge-start
import AEPEdge
//step-edge-end

public struct MobileSDKCommerceSchema
//step-edge-start
: XDMSchema
//step-edge-end
{
	public let schemaVersion = "1.0"
	public let schemaIdentifier = ""
	public let datasetIdentifier = ""
	
	public init() {}

	public var commerce: Commerce?
	public var eventMergeId: String?
	public var eventType: String?
	public var productListItems: Array<ProductListItemsItem?>?
	public var timestamp: Date?

	enum CodingKeys: String, CodingKey {
		case commerce = "commerce"
		case eventMergeId = "eventMergeId"
		case eventType = "eventType"
		case productListItems = "productListItems"
		case timestamp = "timestamp"
	}	
}

extension MobileSDKCommerceSchema {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		if let unwrapped = commerce { try container.encode(unwrapped, forKey: .commerce) }
		if let unwrapped = eventMergeId { try container.encode(unwrapped, forKey: .eventMergeId) }
		if let unwrapped = eventType { try container.encode(unwrapped, forKey: .eventType) }
		if let unwrapped = productListItems { try container.encode(unwrapped, forKey: .productListItems) }
		if let unwrapped = timestamp?.getISO8601UTCDateWithMilliseconds() { try container.encode(unwrapped, forKey: .timestamp) }
	}
}
