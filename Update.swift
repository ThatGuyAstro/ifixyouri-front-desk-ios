//
//  Update.swift
//  iFixYouri Check In
//
//  Created by Sam Elder on 10/26/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import Foundation

class Update {
    
    private var _content: String!
    private var _status: String!
    private var _check_in_id: Int!
    private var _time_stamp: String!
    
    var content: String {
        return _content
    }
    
    var status: String {
        return _status
    }
    
    var check_in_id: Int {
        return _check_in_id
    }
    
    var time_stamp: String {
        return _time_stamp
    }
    
    init(content: String, status: String, check_in_id: Int, time_stamp: String) {
        
        _content = content
        _status = status
        _check_in_id = check_in_id
        _time_stamp = time_stamp
        
    }
    
}
