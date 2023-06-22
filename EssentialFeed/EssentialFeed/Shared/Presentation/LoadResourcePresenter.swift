//
//  LoadResourcePresenter.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 21/06/23.
//

import Foundation

public protocol ResourceView {
    associatedtype ResourceViewModel

    func display(_ viewModel: ResourceViewModel)
}

public final class LoadResourcePresenter<Resource, View: ResourceView> {
    public typealias Mapper = (Resource) throws -> View.ResourceViewModel

    private let resourceView: View
    private let mapper: Mapper

    public init(resourceView: View, mapper: @escaping Mapper) {
        self.resourceView = resourceView
        self.mapper = mapper
    }

}
