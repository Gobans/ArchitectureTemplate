import RxSwift
import Foundation

public protocol ExampleUseCase {
    func load() -> Single<SlipVO>
}

public final class DefaultExampleUseCase: ExampleUseCase {
    
    private let repository: ExampleRepository
    
    public init(repository: ExampleRepository) {
        self.repository = repository
    }
    
    public func load() -> Single<SlipVO> {
        repository.loadSlip()
    }
}
