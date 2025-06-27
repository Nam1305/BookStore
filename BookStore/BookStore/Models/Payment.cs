using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Payment
{
    public int PaymentId { get; set; }

    public string? PaymentMethod { get; set; }

    public string PaymentStatus { get; set; } = null!;

    public string TransactionCode { get; set; } = null!;

    public float Amount { get; set; }

    public DateOnly PaymentDate { get; set; }

    public DateOnly CreatedDate { get; set; }

    public int OrderId { get; set; }

    public int UserId { get; set; }

    public int OrdersPaymentMethod { get; set; }

    public virtual Order Order { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
