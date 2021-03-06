//
//  Revise.swift
//  SwiftGL
//
//  Created by jerry on 2015/8/18.
//  Copyright © 2015年 Jerry Chan. All rights reserved.
//

import Foundation
public enum NoteType{
    case note
    case question
    case revision
}
public struct SANote{
    public var title:String
    public var description:String
    public var value:NoteValueData
    
    public init(title:String,description:String,strokeIndex:Int,type:NoteType)
    {
        self.title = title
        self.description = description
        self.value = NoteValueData(strokeIndex: strokeIndex,timestamps: 0)
    }
    
    public init(title:String,description:String,valueData:NoteValueData)
    {
        self.title = title
        self.description = description
        self.value = valueData
    }
}

public struct NoteValueData:Initable {
    public var strokeIndex:Int
    public var timestamps:TimeInterval
    //var type:NoteType
    public init()
    {
        strokeIndex = 0
        timestamps = 0
        //type = .Note
    }
    public init(strokeIndex:Int,timestamps:TimeInterval){
        self.strokeIndex = strokeIndex
        self.timestamps = timestamps
        //self.type = type
    }
}
