using BusinessObjects;
using DataAccessLayer;
using Repositories;
using Services;

public class ServiceService : IServiceService
{
    private readonly IServiceRepository iServiceRepository;
    public ServiceService()
    {
        iServiceRepository = new ServiceRepository();
    }

    

    public List<Service> GetServicesByType(string type) => iServiceRepository.GetServicesByType(type);

    public void AddService(Service service)
    {
        service.ServiceId = iServiceRepository.GenerateNewServiceId();

        iServiceRepository.AddService(service);
    }

    public void DeleteService(Service service)
    {
        iServiceRepository.DeleteService(service);
    }

    public List<Service> GetAllServices()
    {
        return iServiceRepository.GetAllServices();
    }

    public Service GetServiceById(string serviceId)
    {
        return iServiceRepository.GetServiceById(serviceId);
    }

    public void UpdateService(Service service)
    {
        iServiceRepository.UpdateService(service);
    }
}
