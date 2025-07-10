﻿using System;
using System.Collections.Generic;

namespace BusinessObjects;

public partial class Booking
{
    public string BookingId { get; set; } = null!;

    public string? CustomerId { get; set; }

    public DateTime? Date { get; set; }

    public string? StaffId { get; set; }

    public string? ServiceId { get; set; }

    public string? Address { get; set; }

    public string? Method { get; set; }

    public string? Status { get; set; }

    public virtual User? Customer { get; set; }

    public virtual ICollection<Invoice> Invoices { get; set; } = new List<Invoice>();

    public virtual ICollection<Kit> Kits { get; set; } = new List<Kit>();

    public virtual Service? Service { get; set; }

    public virtual User? Staff { get; set; }

    public virtual ICollection<TestResult> TestResults { get; set; } = new List<TestResult>();
}
