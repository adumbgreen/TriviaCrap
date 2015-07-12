.class abstract Lorg/b/c/a/a;
.super Lorg/b/c/a/b;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/b/c/a/b;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/b/c/a/a;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected a(Lorg/b/c/c;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lorg/b/c/a/a;->a:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method protected abstract a(Lorg/b/c/c;[B)Lorg/b/c/a/i;
.end method

.method protected b(Lorg/b/c/c;)Lorg/b/c/a/i;
    .locals 5
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/b/c/a/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lorg/b/c/c;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 44
    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/b/c/c;->a(J)V

    .line 46
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/b/c/a/a;->a(Lorg/b/c/c;[B)Lorg/b/c/a/i;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/b/c/a/a;->a:Ljava/io/ByteArrayOutputStream;

    .line 48
    return-object v0
.end method
