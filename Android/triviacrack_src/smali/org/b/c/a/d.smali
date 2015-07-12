.class public abstract Lorg/b/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/i;


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/b/c/a/d;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/b/c/a/d;->a:Ljava/io/InputStream;

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/b/c/a/d;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/b/c/a/d;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->a()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/a;

    .line 63
    sget-object v2, Lorg/b/c/a;->c:Lorg/b/c/a;

    invoke-virtual {v0, v2}, Lorg/b/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/b/c/i;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/b/c/a/d;->b()I

    move-result v0

    invoke-static {v0}, Lorg/b/c/i;->a(I)Lorg/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/b/c/a/d;->g()Ljava/io/InputStream;

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lorg/b/c/a/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lorg/b/c/a/d;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    :cond_0
    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/b/c/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/b/c/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/b/c/a/d;->h()V

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract g()Ljava/io/InputStream;
.end method

.method protected abstract h()V
.end method
