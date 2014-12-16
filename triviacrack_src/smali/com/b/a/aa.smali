.class public Lcom/b/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/os/Handler;

.field static b:Lcom/b/a/aa;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Lcom/b/a/k;

.field final e:Lcom/b/a/e;

.field final f:Lcom/b/a/am;

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field volatile k:Z

.field l:Z

.field private final m:Lcom/b/a/ad;

.field private final n:Lcom/b/a/af;

.field private final o:Lcom/b/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/b/a/aa$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/aa$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/b/a/aa;->a:Landroid/os/Handler;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/ad;Lcom/b/a/af;Lcom/b/a/am;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/b/a/aa;->c:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/b/a/aa;->d:Lcom/b/a/k;

    .line 136
    iput-object p3, p0, Lcom/b/a/aa;->e:Lcom/b/a/e;

    .line 137
    iput-object p4, p0, Lcom/b/a/aa;->m:Lcom/b/a/ad;

    .line 138
    iput-object p5, p0, Lcom/b/a/aa;->n:Lcom/b/a/af;

    .line 139
    iput-object p6, p0, Lcom/b/a/aa;->f:Lcom/b/a/am;

    .line 140
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/aa;->g:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/aa;->h:Ljava/util/Map;

    .line 142
    iput-boolean p7, p0, Lcom/b/a/aa;->j:Z

    .line 143
    iput-boolean p8, p0, Lcom/b/a/aa;->k:Z

    .line 144
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/b/a/aa;->i:Ljava/lang/ref/ReferenceQueue;

    .line 145
    new-instance v0, Lcom/b/a/ac;

    iget-object v1, p0, Lcom/b/a/aa;->i:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/b/a/aa;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/b/a/ac;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/b/a/aa;->o:Lcom/b/a/ac;

    .line 146
    iget-object v0, p0, Lcom/b/a/aa;->o:Lcom/b/a/ac;

    invoke-virtual {v0}, Lcom/b/a/ac;->start()V

    .line 147
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/b/a/aa;
    .locals 2
    .parameter

    .prologue
    .line 470
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    if-nez v0, :cond_1

    .line 471
    const-class v1, Lcom/b/a/aa;

    monitor-enter v1

    .line 472
    :try_start_0
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0, p0}, Lcom/b/a/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v0

    sput-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    .line 475
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_1
    sget-object v0, Lcom/b/a/aa;->b:Lcom/b/a/aa;

    return-object v0

    .line 475
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/b/a/ae;Lcom/b/a/a;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-virtual {p3}, Lcom/b/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p3}, Lcom/b/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/b/a/aa;->g:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_2
    if-eqz p1, :cond_4

    .line 386
    if-nez p2, :cond_3

    .line 387
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 389
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/b/a/a;->a(Landroid/graphics/Bitmap;Lcom/b/a/ae;)V

    .line 390
    iget-boolean v0, p0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lcom/b/a/a;->b:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_4
    invoke-virtual {p3}, Lcom/b/a/a;->a()V

    .line 395
    iget-boolean v0, p0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lcom/b/a/a;->b:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/aa;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/b/a/aa;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lcom/b/a/au;->b()V

    .line 403
    iget-object v0, p0, Lcom/b/a/aa;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/b/a/a;->b()V

    .line 406
    iget-object v1, p0, Lcom/b/a/aa;->d:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->b(Lcom/b/a/a;)V

    .line 408
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 409
    check-cast p1, Landroid/widget/ImageView;

    .line 410
    iget-object v0, p0, Lcom/b/a/aa;->h:Ljava/util/Map;

    .line 411
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/j;

    .line 412
    if-eqz v0, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/b/a/j;->a()V

    .line 416
    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Lcom/b/a/ai;
    .locals 3
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/b/a/aa;->n:Lcom/b/a/af;

    invoke-interface {v0, p1}, Lcom/b/a/af;->a(Lcom/b/a/ai;)Lcom/b/a/ai;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/aa;->n:Lcom/b/a/af;

    .line 310
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/b/a/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/b/a/ak;-><init>(Lcom/b/a/aa;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/ak;
    .locals 3
    .parameter

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Lcom/b/a/ak;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a/ak;-><init>(Lcom/b/a/aa;Landroid/net/Uri;I)V

    .line 196
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/aa;->a(Landroid/net/Uri;)Lcom/b/a/ak;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/b/a/aa;->a(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method a(Landroid/widget/ImageView;Lcom/b/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lcom/b/a/aa;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/b/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0, v0}, Lcom/b/a/aa;->a(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/b/a/aa;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/b/a/aa;->b(Lcom/b/a/a;)V

    .line 329
    return-void
.end method

.method public a(Lcom/b/a/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/b/a/aa;->a(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method a(Lcom/b/a/d;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/b/a/d;->j()Lcom/b/a/a;

    move-result-object v3

    .line 347
    invoke-virtual {p1}, Lcom/b/a/d;->l()Ljava/util/List;

    move-result-object v4

    .line 349
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 350
    :goto_0
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    .line 352
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 376
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v0

    .line 349
    goto :goto_0

    :cond_3
    move v1, v0

    .line 350
    goto :goto_1

    .line 356
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/d;->i()Lcom/b/a/ai;

    move-result-object v1

    iget-object v5, v1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    .line 357
    invoke-virtual {p1}, Lcom/b/a/d;->m()Ljava/lang/Exception;

    move-result-object v6

    .line 358
    invoke-virtual {p1}, Lcom/b/a/d;->g()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 359
    invoke-virtual {p1}, Lcom/b/a/d;->a()Lcom/b/a/ae;

    move-result-object v8

    .line 361
    if-eqz v3, :cond_5

    .line 362
    invoke-direct {p0, v7, v8, v3}, Lcom/b/a/aa;->a(Landroid/graphics/Bitmap;Lcom/b/a/ae;Lcom/b/a/a;)V

    .line 365
    :cond_5
    if-eqz v2, :cond_6

    .line 367
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_6

    .line 368
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;

    .line 369
    invoke-direct {p0, v7, v8, v0}, Lcom/b/a/aa;->a(Landroid/graphics/Bitmap;Lcom/b/a/ae;Lcom/b/a/a;)V

    .line 367
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 373
    :cond_6
    iget-object v0, p0, Lcom/b/a/aa;->m:Lcom/b/a/ad;

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 374
    iget-object v0, p0, Lcom/b/a/aa;->m:Lcom/b/a/ad;

    invoke-interface {v0, p0, v5, v6}, Lcom/b/a/ad;->a(Lcom/b/a/aa;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/b/a/aa;->b(Z)V

    .line 250
    return-void
.end method

.method b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/b/a/aa;->e:Lcom/b/a/e;

    invoke-interface {v0, p1}, Lcom/b/a/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/b/a/aa;->f:Lcom/b/a/am;

    invoke-virtual {v1}, Lcom/b/a/am;->a()V

    .line 342
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/b/a/aa;->f:Lcom/b/a/am;

    invoke-virtual {v1}, Lcom/b/a/am;->b()V

    goto :goto_0
.end method

.method b(Lcom/b/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/b/a/aa;->d:Lcom/b/a/k;

    invoke-virtual {v0, p1}, Lcom/b/a/k;->a(Lcom/b/a/a;)V

    .line 333
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/b/a/aa;->j:Z

    .line 255
    return-void
.end method
