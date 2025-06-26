using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Publisher
{
    public int PublisherId { get; set; }

    public string PublisherName { get; set; } = null!;

    public string? Address { get; set; }
}
