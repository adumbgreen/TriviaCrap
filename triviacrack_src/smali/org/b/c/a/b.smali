.class public abstract Lorg/b/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/e;


# instance fields
.field private final a:Lorg/b/c/c;

.field private b:Z

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/b/c/c;

    invoke-direct {v0}, Lorg/b/c/c;-><init>()V

    iput-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/c/a/b;->b:Z

    return-void
.end method

.method private a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lorg/b/c/a/b;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/b/c/a/b;->c:Ljava/io/OutputStream;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/b/c/a/b;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/b/c/a/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "ClientHttpRequest already executed"

    invoke-static {v0, v1}, Lorg/b/d/a;->b(ZLjava/lang/String;)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    invoke-virtual {v0}, Lorg/b/c/c;->a()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/a;

    .line 90
    sget-object v2, Lorg/b/c/a;->c:Lorg/b/c/a;

    invoke-virtual {v0, v2}, Lorg/b/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/b/c/a/b;->f()V

    .line 50
    iget-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    invoke-virtual {p0, v0}, Lorg/b/c/a/b;->a(Lorg/b/c/c;)Ljava/io/OutputStream;

    move-result-object v0

    .line 51
    invoke-direct {p0}, Lorg/b/c/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, v0}, Lorg/b/c/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 54
    :cond_0
    return-object v0
.end method

.method protected abstract a(Lorg/b/c/c;)Ljava/io/OutputStream;
.end method

.method protected abstract b(Lorg/b/c/c;)Lorg/b/c/a/i;
.end method

.method public final d()Lorg/b/c/c;
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/b/c/a/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    invoke-static {v0}, Lorg/b/c/c;->a(Lorg/b/c/c;)Lorg/b/c/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    goto :goto_0
.end method

.method public final e()Lorg/b/c/a/i;
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/b/c/a/b;->f()V

    .line 60
    iget-object v0, p0, Lorg/b/c/a/b;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/b/c/a/b;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/b/c/a/b;->a:Lorg/b/c/c;

    invoke-virtual {p0, v0}, Lorg/b/c/a/b;->b(Lorg/b/c/c;)Lorg/b/c/a/i;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/b/c/a/b;->b:Z

    .line 65
    return-object v0
.end method
