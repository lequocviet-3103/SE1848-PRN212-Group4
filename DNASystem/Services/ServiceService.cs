using BusinessObjects;
using DataAccessLayer;
using Repositories;
using Services;

public class ServiceService : IServiceService
{
    private readonly IServiceRepository repository;

    public ServiceService()
    {
        repository = new ServiceRepository();
    }

    public List<Service> GetAllServices() => repository.GetAllServices();

    public List<Service> GetServicesByType(string type) => repository.GetServicesByType(type);

    public Service? GetServiceById(string id) => repository.GetServiceById(id);

    public void AddService(Service service) => repository.AddService(service);

    public void UpdateService(Service service) => repository.UpdateService(service);

    public void DeleteService(string id) => repository.DeleteService(id);

    public string GenerateNewServiceId() => repository.GenerateNewServiceId();
}
