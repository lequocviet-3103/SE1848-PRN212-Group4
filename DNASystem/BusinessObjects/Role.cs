﻿using System;
using System.Collections.Generic;

namespace BusinessObjects;

public partial class Role
{
    public string RoleId { get; set; } = null!;

    public string? Rolename { get; set; }

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
