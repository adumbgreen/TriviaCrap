.class public Lorg/b/c/b/b;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/b/a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/b/c/k;

    const/4 v1, 0x0

    new-instance v2, Lorg/b/c/k;

    const-string v3, "application"

    const-string v4, "octet-stream"

    invoke-direct {v2, v3, v4}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/b/c/k;->a:Lorg/b/c/k;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>([Lorg/b/c/k;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/b;->a([BLorg/b/c/k;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a([BLorg/b/c/k;)Ljava/lang/Long;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/b;->a([BLorg/b/c/g;)V

    return-void
.end method

.method protected a([BLorg/b/c/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/b/d/e;->a([BLjava/io/OutputStream;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, [B

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/b;->c(Ljava/lang/Class;Lorg/b/c/d;)[B

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;Lorg/b/c/d;)[B
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+[B>;",
            "Lorg/b/c/d;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 52
    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->b()J

    move-result-wide v0

    .line 53
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 54
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 55
    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/b/d/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/e;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_0
.end method
