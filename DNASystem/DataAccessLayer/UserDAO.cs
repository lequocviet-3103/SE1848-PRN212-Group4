using BusinessObjects;
using Microsoft.EntityFrameworkCore;

namespace DataAccessLayer
{
    public class UserDAO
    {
        public User GetAccountByUsername(string username)
        {
            using var context = new DnasystemContext();
            return context.Users.FirstOrDefault(u => u.Username.Equals(username));
        }
        public void Register(User user)
        {
                       using var context = new DnasystemContext();
            context.Users.Add(user);
            context.SaveChanges();
        }
        public string GenerateNewUserId()
        {
            using var context = new DnasystemContext();

            var lastUser = context.Users
                .Where(u => u.UserId.StartsWith("C"))
                .OrderByDescending(u => u.UserId)
                .FirstOrDefault();

            if (lastUser == null)
            {
                return "C001";
            }

            // Tách phần số và tăng lên
            var numberPart = int.Parse(lastUser.UserId.Substring(1));
            return "C" + (numberPart + 1).ToString("D3");
        }


    }
}
