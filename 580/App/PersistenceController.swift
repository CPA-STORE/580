import CoreData

class PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "Model") // Название модели из Model.xcdatamodeld
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Не удалось загрузить хранилище Core Data: \(error), \(error.userInfo)")
            }
        }
    }
}
