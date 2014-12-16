.class public Lcom/etermax/tools/d/f;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    move-wide v2, v4

    .line 22
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/etermax/tools/d/f;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 24
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/etermax/tools/d/f;->read()I

    move-result v0

    .line 26
    if-gez v0, :cond_1

    .line 34
    :cond_0
    return-wide v2

    .line 29
    :cond_1
    const-wide/16 v0, 0x1

    .line 32
    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 33
    goto :goto_0
.end method
