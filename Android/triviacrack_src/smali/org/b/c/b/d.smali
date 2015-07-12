.class Lorg/b/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/g;


# instance fields
.field final synthetic a:Lorg/b/c/b/c;

.field private final b:Lorg/b/c/c;

.field private final c:Ljava/io/OutputStream;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/b/c/b/c;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lorg/b/c/b/d;->a:Lorg/b/c/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Lorg/b/c/c;

    invoke-direct {v0}, Lorg/b/c/c;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/d;->b:Lorg/b/c/c;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/c/b/d;->d:Z

    .line 375
    iput-object p2, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    .line 376
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 388
    iget-boolean v0, p0, Lorg/b/c/b/d;->d:Z

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lorg/b/c/b/d;->b:Lorg/b/c/c;

    invoke-virtual {v0}, Lorg/b/c/c;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/b/c/b/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-virtual {p0, v0}, Lorg/b/c/b/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 393
    iget-object v4, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 394
    iget-object v4, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 395
    iget-object v4, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 396
    iget-object v4, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    iget-object v0, p0, Lorg/b/c/b/d;->a:Lorg/b/c/b/c;

    iget-object v4, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    invoke-static {v0, v4}, Lorg/b/c/b/c;->a(Lorg/b/c/b/c;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lorg/b/c/b/d;->a:Lorg/b/c/b/c;

    iget-object v1, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/b/c/b/c;->a(Lorg/b/c/b/c;Ljava/io/OutputStream;)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/b/c/b/d;->d:Z

    .line 403
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/b/c/b/d;->b()V

    .line 384
    iget-object v0, p0, Lorg/b/c/b/d;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 407
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Lorg/b/c/c;
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/b/c/b/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/b/c/b/d;->b:Lorg/b/c/c;

    invoke-static {v0}, Lorg/b/c/c;->a(Lorg/b/c/c;)Lorg/b/c/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/b/c/b/d;->b:Lorg/b/c/c;

    goto :goto_0
.end method
