using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Review
{
    public int ReviewId { get; set; }

    public int? Rating { get; set; }

    public string? Comment { get; set; }

    public DateOnly CreatedAt { get; set; }

    public bool? IsApproved { get; set; }

    public int BookId { get; set; }

    public int UserId { get; set; }

    public virtual Book Book { get; set; } = null!;

    public virtual ICollection<ReviewMedium> ReviewMedia { get; set; } = new List<ReviewMedium>();

    public virtual User User { get; set; } = null!;
}
