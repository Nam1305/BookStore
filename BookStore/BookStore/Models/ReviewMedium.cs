using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class ReviewMedium
{
    public int MediaId { get; set; }

    public int ReviewId { get; set; }

    public string? MediaUrl { get; set; }

    public string? MediaType { get; set; }

    public virtual Review Review { get; set; } = null!;
}
