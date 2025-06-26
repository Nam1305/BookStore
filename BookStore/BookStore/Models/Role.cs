using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Role
{
    public int RoleId { get; set; }

    public string? RoleName { get; set; }

    public string? Description { get; set; }
}
