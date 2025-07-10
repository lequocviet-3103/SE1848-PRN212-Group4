﻿using BusinessObjects;
using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class UserRepository : IUserRepository
    {
        UserDAO userDAO = new UserDAO();

        public string GenerateNewUserId()
        {
            return userDAO.GenerateNewUserId();
        }

        public User GetAccountByUsername(string username)
        {
            return userDAO.GetAccountByUsername(username);
        }

        public void Register(User user)
        {
            userDAO.Register(user);
        }
    }
}
