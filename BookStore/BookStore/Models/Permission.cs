using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Permission
{
    public int PermissionId { get; set; }

    public string PermissionKey { get; set; } = null!;

    public string Description { get; set; } = null!;
}
