using BusinessObjects;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace DataAccessLayer
{
    public class ServiceDAO
    {

        public List<Service> GetServicesByType(string type)
        {
            using var context = new DnasystemContext();
            var test = context.Services.ToList();
            return context.Services
                          .Where(s => s.Type != null && s.Type == type)
                          .OrderBy(s => s.Name)
                          .ToList();
        }

        public List<Service> GetAllServices()
        {
            using var context = new DnasystemContext();
            return context.Services
                          .OrderBy(s => s.Name)
                          .ToList();
        }

        public Service? GetServiceById(string serviceId)
        {
            using var context = new DnasystemContext();
            return context.Services.FirstOrDefault(s => s.ServiceId == serviceId);
        }

        public void AddService(Service service)
        {
            using var context = new DnasystemContext();
            context.Services.Add(service);
            context.SaveChanges();
        }

        public void UpdateService(Service updatedService)
        {
            using var context = new DnasystemContext();
            var existing = context.Services.FirstOrDefault(s => s.ServiceId == updatedService.ServiceId);
            if (existing != null)
            {
                existing.Name = updatedService.Name;
                existing.Price = updatedService.Price;
                existing.Type = updatedService.Type;
                existing.Description = updatedService.Description;
                existing.Image = updatedService.Image;

                context.SaveChanges();
            }
        }


        public void DeleteService(string serviceId)
        {
            using var context = new DnasystemContext();
            var service = context.Services.FirstOrDefault(s => s.ServiceId == serviceId);
            if (service != null)
            {
                context.Services.Remove(service);
                context.SaveChanges();
            }
        }

        public string GenerateNewServiceId()
        {
            using var context = new DnasystemContext();

            var lastService = context.Services
                .Where(s => s.ServiceId.StartsWith("S"))
                .OrderByDescending(s => s.ServiceId)
                .FirstOrDefault();

            if (lastService == null)
            {
                return "S001";
            }

            var numberPart = int.TryParse(lastService.ServiceId.Substring(1), out int number)
                ? number
                : 0;

            return "S" + (number + 1).ToString("D3");
        }
    }
}
