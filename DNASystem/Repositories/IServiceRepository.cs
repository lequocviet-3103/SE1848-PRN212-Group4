using BusinessObjects;
using System.Collections.Generic;

namespace DataAccessLayer
{
    public interface IServiceRepository
    {
        public List<Service> GetAllServices();

        public Service GetServiceById(string serviceId);
        public void AddService(Service service);
        public void UpdateService(Service service);
        public void DeleteService(Service service);

        public string GenerateNewServiceId();
        public List<Service> GetServicesByType(string type);
        
    }
}
