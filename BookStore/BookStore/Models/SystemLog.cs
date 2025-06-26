using System;
using System.Collections.Generic;

namespace BookStore.Models;

public partial class SystemLog
{
    public int LogId { get; set; }

    public int UserId { get; set; }

    public string? Action { get; set; }

    public string? Message { get; set; }

    public string? Data { get; set; }

    public DateOnly CreatedAt { get; set; }

    public virtual User User { get; set; } = null!;
}
