using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class Book
{
    public int BookId { get; set; }

    public float Price { get; set; }

    public string Title { get; set; } = null!;

    public string? Description { get; set; }

    public int? Stock { get; set; }

    public DateOnly CreatedAt { get; set; }

    public int CategoryId { get; set; }

    public int AuthorId { get; set; }

    public virtual Author Author { get; set; } = null!;

    public virtual ICollection<BookImage> BookImages { get; set; } = new List<BookImage>();

    public virtual Category Category { get; set; } = null!;

    public virtual ICollection<OrderDetail> OrderDetails { get; set; } = new List<OrderDetail>();

    public virtual ICollection<Review> Reviews { get; set; } = new List<Review>();
}
