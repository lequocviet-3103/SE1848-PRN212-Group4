using BusinessObjects;
using DataAccessLayer;
using System.Collections.Generic;

namespace Repositories
{
    public class ServiceRepository : IServiceRepository
    {
        private readonly ServiceDAO serviceDAO = new ServiceDAO();

        public List<Service> GetAllServices()
        {
            return serviceDAO.GetAllServices();
        }

        public List<Service> GetServicesByType(string type)
        {
            return serviceDAO.GetServicesByType(type);
        }

        public Service? GetServiceById(string serviceId)
        {
            return serviceDAO.GetServiceById(serviceId);
        }

        public void AddService(Service service)
        {
            serviceDAO.AddService(service);
        }

        public void UpdateService(Service service)
        {
            serviceDAO.UpdateService(service);
        }

        public void DeleteService(string serviceId)
        {
            serviceDAO.DeleteService(serviceId);
        }

        public string GenerateNewServiceId()
        {
            return serviceDAO.GenerateNewServiceId();
        }
    }
}
