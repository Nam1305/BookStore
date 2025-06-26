using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Address
{
    public int AddressId { get; set; }

    public string? Address1 { get; set; }

    public string? FullName { get; set; }

    public string? Phone { get; set; }

    public string? Province { get; set; }

    public byte[]? District { get; set; }

    public string? Ward { get; set; }

    public string? Street { get; set; }

    public bool? IsDefault { get; set; }

    public DateOnly? CreatedAt { get; set; }

    public int UserId { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();

    public virtual User User { get; set; } = null!;
}
