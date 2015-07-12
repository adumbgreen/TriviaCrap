.class public final Lcom/google/android/gms/internal/in;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/in;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/in;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/in;->b:I

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/in;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/in;->a([BII)Lcom/google/android/gms/internal/in;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/in;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/in;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/in;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/in;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(B)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/in;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/in;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/io;

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/in;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/io;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/in;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->a(B)V

    return-void
.end method

.method public a(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ip;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->b(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/in;->a(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/in;->a(J)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/in;->a(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/in;->b(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/in;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->b([B)V

    return-void
.end method

.method public b(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/in;->a(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->a(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public b(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->a(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in;->a(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public b([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/in;->b([BII)V

    return-void
.end method

.method public b([BII)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/in;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/in;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/in;->c:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/io;

    iget v1, p0, Lcom/google/android/gms/internal/in;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/in;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/io;-><init>(II)V

    throw v0
.end method
