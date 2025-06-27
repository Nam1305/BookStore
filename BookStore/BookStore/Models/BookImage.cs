using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class BookImage
{
    public int ImageId { get; set; }

    public string? ImageUrl { get; set; }

    public bool? IsCover { get; set; }

    public int BookId { get; set; }

    public virtual Book Book { get; set; } = null!;
}
