.class public abstract Lorg/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/a/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 282
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iput-object p1, p0, Lorg/a/a/b;->a:Ljava/lang/String;

    .line 285
    :cond_0
    if-lez p2, :cond_1

    .line 286
    iput p2, p0, Lorg/a/a/b;->b:I

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/a/a/b;->c:J

    .line 289
    :cond_1
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iput-object p3, p0, Lorg/a/a/b;->d:Ljava/lang/String;

    .line 292
    :cond_2
    return-void
.end method

.method static synthetic a(Lorg/a/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/a/a/b;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lorg/a/a/b;->f:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic a(Lorg/a/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/a/a/b;->e:Z

    return p1
.end method

.method static synthetic b(Lorg/a/a/b;)I
    .locals 1
    .parameter

    .prologue
    .line 258
    iget v0, p0, Lorg/a/a/b;->b:I

    return v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 312
    iget-object v0, p0, Lorg/a/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    const-class v1, Lorg/a/a/a;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-static {}, Lorg/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lorg/a/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lorg/a/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/a/a/a;->a(Ljava/lang/String;)Lorg/a/a/b;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    iget v2, v0, Lorg/a/a/b;->b:I

    if-eqz v2, :cond_1

    .line 325
    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/a/a/b;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/a/a/b;->b:I

    .line 328
    :cond_1
    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 331
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lorg/a/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/a/a/b;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/a/a/b;->f:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic e(Lorg/a/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/a/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lorg/a/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    invoke-direct {p0}, Lorg/a/a/b;->b()V

    return-void
.end method

.method static synthetic g(Lorg/a/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/a/a/b;->e:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/a/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-direct {p0}, Lorg/a/a/b;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/a/a/b;->b()V

    throw v0
.end method
