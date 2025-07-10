using BusinessObjects;

namespace Repositories
{
    public interface IUserRepository
    {
        public User GetAccountByEmail(string email);
    }
}
