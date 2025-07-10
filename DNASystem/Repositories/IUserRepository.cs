using BusinessObjects;

namespace Repositories
{
    public interface IUserRepository
    {
        public User GetAccountByUsername(string username);
        public void Register(User user);
        public string GenerateNewUserId(); // Assuming this method exists in IUserRepository
    }
}
