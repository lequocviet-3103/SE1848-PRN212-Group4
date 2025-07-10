using BusinessObjects;
using System.Collections.Generic;

namespace DataAccessLayer
{
    public interface IServiceRepository
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
