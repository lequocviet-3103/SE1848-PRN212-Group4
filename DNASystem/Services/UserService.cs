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

        public User GetAccountByUsername(string username)
        {
            return iUserRepository.GetAccountByUsername(username);
        }

        public void Register(User user)
        {
            if(GetAccountByUsername(user.Username) != null)
            {
                throw new Exception("Username already exists.");
            }
            user.UserId = iUserRepository.GenerateNewUserId(); 
            iUserRepository.Register(user);
        }
    }
}
