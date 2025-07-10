using BusinessObjects;
using System.Collections.Generic;

namespace Services
{
    public interface IServiceService
    {
     
        public List<Service> GetServicesByType(string type);
        public List<Service> GetAllServices();

        public Service GetServiceById(string serviceId);
        public void AddService(Service service);
        public void UpdateService(Service service);
        public void DeleteService(Service service);
    }
}
