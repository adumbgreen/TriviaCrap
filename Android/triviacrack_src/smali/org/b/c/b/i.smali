.class public Lorg/b/c/b/i;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/b/a",
        "<",
        "Lorg/b/b/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/b/c/k;->a:Lorg/b/c/k;

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>(Lorg/b/c/k;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Lorg/b/b/a/e;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/i;->a(Lorg/b/b/a/e;Lorg/b/c/k;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/b/b/a/e;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/b/b/a/e;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lorg/b/c/k;
    .locals 1
    .parameter

    .prologue
    .line 39
    check-cast p1, Lorg/b/b/a/e;

    invoke-virtual {p0, p1}, Lorg/b/c/b/i;->a(Lorg/b/b/a/e;)Lorg/b/c/k;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/b/b/a/e;)Lorg/b/c/k;
    .locals 1
    .parameter

    .prologue
    .line 61
    sget-object v0, Lorg/b/c/k;->f:Lorg/b/c/k;

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Lorg/b/b/a/e;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/i;->a(Lorg/b/b/a/e;Lorg/b/c/g;)V

    return-void
.end method

.method protected a(Lorg/b/b/a/e;Lorg/b/c/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/b/b/a/e;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/b/d/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 74
    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 75
    return-void
.end method

.method protected a(Ljava/lang/Class;)Z
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
    .line 48
    const-class v0, Lorg/b/b/a/e;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/i;->c(Ljava/lang/Class;Lorg/b/c/d;)Lorg/b/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Class;Lorg/b/c/d;)Lorg/b/b/a/e;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/b/b/a/e;",
            ">;",
            "Lorg/b/c/d;",
            ")",
            "Lorg/b/b/a/e;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/e;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 56
    new-instance v1, Lorg/b/b/a/b;

    invoke-direct {v1, v0}, Lorg/b/b/a/b;-><init>([B)V

    return-object v1
.end method
