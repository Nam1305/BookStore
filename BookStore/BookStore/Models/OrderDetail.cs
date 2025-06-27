using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class OrderDetail
{
    public int OrderDetailId { get; set; }

    public int OrderId { get; set; }

    public int BookId { get; set; }

    public int Quantity { get; set; }

    public float UnitPrice { get; set; }

    public string OrdersPaymentMethod { get; set; } = null!;

    public virtual Book Book { get; set; } = null!;

    public virtual Order Order { get; set; } = null!;
}
