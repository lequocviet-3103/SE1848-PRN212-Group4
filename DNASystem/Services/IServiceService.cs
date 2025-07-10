using BusinessObjects;
using System.Collections.Generic;

namespace Services
{
    public interface IServiceService
    {
        List<Service> GetAllServices();
        List<Service> GetServicesByType(string type);
        Service? GetServiceById(string serviceId);
        void AddService(Service service);
        void UpdateService(Service service);
        void DeleteService(string serviceId);
        string GenerateNewServiceId();
    }
}
