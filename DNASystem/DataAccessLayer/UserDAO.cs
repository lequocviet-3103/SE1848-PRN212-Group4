using BusinessObjects;
using Microsoft.EntityFrameworkCore;

namespace DataAccessLayer
{
    public class UserDAO
    {
        public User GetAccountByEmail(string email)
        {
            using var context = new DnasystemContext();
            return context.Users.FirstOrDefault(u => u.Email.Equals(email));
        }
    }
}
