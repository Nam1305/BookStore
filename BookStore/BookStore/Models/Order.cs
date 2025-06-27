using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Order
{
    public int OrderId { get; set; }

    public int UserId { get; set; }

    public int AddressId { get; set; }

    public string? OrderStatus { get; set; }

    public float? TotalAmount { get; set; }

    public string PaymentMethod { get; set; } = null!;

    public DateOnly CreatedDate { get; set; }

    public DateOnly UpdatedDate { get; set; }

    public virtual Address Address { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();

    public virtual ICollection<Payment> Payments { get; set; } = new List<Payment>();

    public virtual User User { get; set; } = null!;
}
