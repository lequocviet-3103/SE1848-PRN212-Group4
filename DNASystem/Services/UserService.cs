using BusinessObjects;
using Repositories;

namespace Services
{
    public class UserService : IUserService
    {
        private readonly IUserRepository iUserRepository;

        

        public UserService()
        {
            this.iUserRepository = new UserRepository();
        }

        public User GetAccountByEmail(string email)
        {
            return iUserRepository.GetAccountByEmail(email);
        }
    }
}
