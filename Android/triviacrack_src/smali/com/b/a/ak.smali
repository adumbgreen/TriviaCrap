.class public Lcom/b/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private final b:Lcom/b/a/aa;

.field private final c:Lcom/b/a/aj;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/b/a/ak;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    .line 99
    new-instance v0, Lcom/b/a/aj;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/b/a/aj;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/b/a/aa;Landroid/net/Uri;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-boolean v0, p1, Lcom/b/a/aa;->l:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    .line 94
    new-instance v0, Lcom/b/a/aj;

    invoke-direct {v0, p2, p3}, Lcom/b/a/aj;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    .line 95
    return-void
.end method

.method private a(J)Lcom/b/a/ai;
    .locals 7
    .parameter

    .prologue
    .line 531
    invoke-static {}, Lcom/b/a/ak;->e()I

    move-result v0

    .line 533
    iget-object v1, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->c()Lcom/b/a/ai;

    move-result-object v1

    .line 534
    iput v0, v1, Lcom/b/a/ai;->a:I

    .line 535
    iput-wide p1, v1, Lcom/b/a/ai;->b:J

    .line 537
    iget-object v2, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v2, v2, Lcom/b/a/aa;->k:Z

    .line 538
    if-eqz v2, :cond_0

    .line 539
    const-string v3, "Main"

    const-string v4, "created"

    invoke-virtual {v1}, Lcom/b/a/ai;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/b/a/ai;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v3, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v3, v1}, Lcom/b/a/aa;->a(Lcom/b/a/ai;)Lcom/b/a/ai;

    move-result-object v3

    .line 543
    if-eq v3, v1, :cond_1

    .line 545
    iput v0, v3, Lcom/b/a/ai;->a:I

    .line 546
    iput-wide p1, v3, Lcom/b/a/ai;->b:J

    .line 548
    if-eqz v2, :cond_1

    .line 549
    const-string v0, "Main"

    const-string v1, "changed"

    invoke-virtual {v3}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_1
    return-object v3
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/b/a/ak;->e()I

    move-result v0

    return v0
.end method

.method private static e()I
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/b/a/au;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget v0, Lcom/b/a/ak;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/b/a/ak;->a:I

    .line 74
    :goto_0
    return v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 59
    sget-object v2, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/ak$1;

    invoke-direct {v3, v1, v0}, Lcom/b/a/ak$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v2, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/ak$2;

    invoke-direct {v3, v0}, Lcom/b/a/ak$2;-><init>(Ljava/lang/InterruptedException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method


# virtual methods
.method a()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/ak;->f:Z

    .line 172
    return-object p0
.end method

.method public a(I)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput p1, p0, Lcom/b/a/ak;->g:I

    .line 115
    return-object p0
.end method

.method public a(II)Lcom/b/a/ak;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/aj;->a(II)Lcom/b/a/aj;

    .line 186
    return-object p0
.end method

.method public a(Lcom/b/a/ar;)Lcom/b/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v0, p1}, Lcom/b/a/aj;->a(Lcom/b/a/ar;)Lcom/b/a/aj;

    .line 239
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;Lcom/b/a/f;)V

    .line 463
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/b/a/f;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 476
    invoke-static {}, Lcom/b/a/au;->b()V

    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    iget-object v2, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v0, p1}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 484
    iget v0, p0, Lcom/b/a/ak;->g:I

    iget-object v1, p0, Lcom/b/a/ak;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/ag;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    iget-boolean v2, p0, Lcom/b/a/ak;->f:Z

    if-eqz v2, :cond_6

    .line 489
    iget-object v2, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with resize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 493
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 494
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 495
    :cond_4
    iget v0, p0, Lcom/b/a/ak;->g:I

    iget-object v1, p0, Lcom/b/a/ak;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/ag;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    new-instance v1, Lcom/b/a/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/b/a/j;-><init>(Lcom/b/a/ak;Landroid/widget/ImageView;Lcom/b/a/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;Lcom/b/a/j;)V

    goto :goto_0

    .line 499
    :cond_5
    iget-object v4, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v4, v2, v3}, Lcom/b/a/aj;->a(II)Lcom/b/a/aj;

    .line 502
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/b/a/ak;->a(J)Lcom/b/a/ai;

    move-result-object v9

    .line 503
    invoke-static {v9}, Lcom/b/a/au;->a(Lcom/b/a/ai;)Ljava/lang/String;

    move-result-object v8

    .line 505
    iget-boolean v0, p0, Lcom/b/a/ak;->d:Z

    if-nez v0, :cond_8

    .line 506
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v0, v8}, Lcom/b/a/aa;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_8

    .line 508
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v0, p1}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 509
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v1, v0, Lcom/b/a/aa;->c:Landroid/content/Context;

    sget-object v3, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    iget-boolean v4, p0, Lcom/b/a/ak;->e:Z

    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v5, v0, Lcom/b/a/aa;->j:Z

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/b/a/ag;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/b/a/ae;ZZ)V

    .line 510
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_7

    .line 511
    const-string v0, "Main"

    const-string v1, "completed"

    invoke-virtual {v9}, Lcom/b/a/ai;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_7
    if-eqz p2, :cond_1

    .line 514
    invoke-interface {p2}, Lcom/b/a/f;->a()V

    goto/16 :goto_0

    .line 520
    :cond_8
    iget v0, p0, Lcom/b/a/ak;->g:I

    iget-object v1, p0, Lcom/b/a/ak;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/b/a/ag;->a(Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    .line 522
    new-instance v0, Lcom/b/a/t;

    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v4, p0, Lcom/b/a/ak;->d:Z

    iget-boolean v5, p0, Lcom/b/a/ak;->e:Z

    iget v6, p0, Lcom/b/a/ak;->h:I

    iget-object v7, p0, Lcom/b/a/ak;->j:Landroid/graphics/drawable/Drawable;

    move-object v2, p1

    move-object v3, v9

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/b/a/t;-><init>(Lcom/b/a/aa;Landroid/widget/ImageView;Lcom/b/a/ai;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/b/a/f;)V

    .line 526
    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Lcom/b/a/a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/b/a/ap;)V
    .locals 8
    .parameter

    .prologue
    .line 350
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 351
    invoke-static {}, Lcom/b/a/au;->b()V

    .line 353
    if-nez p1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/ak;->f:Z

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with a Target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    iget v0, p0, Lcom/b/a/ak;->g:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v0, v0, Lcom/b/a/aa;->c:Landroid/content/Context;

    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/b/a/ak;->g:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    :goto_0
    iget-object v3, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v3}, Lcom/b/a/aj;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 365
    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v1, p1}, Lcom/b/a/aa;->a(Lcom/b/a/ap;)V

    .line 366
    invoke-interface {p1, v0}, Lcom/b/a/ap;->b(Landroid/graphics/drawable/Drawable;)V

    .line 388
    :goto_1
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/b/a/ak;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 370
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/b/a/ak;->a(J)Lcom/b/a/ai;

    move-result-object v3

    .line 371
    invoke-static {v3}, Lcom/b/a/au;->a(Lcom/b/a/ai;)Ljava/lang/String;

    move-result-object v7

    .line 373
    iget-boolean v1, p0, Lcom/b/a/ak;->d:Z

    if-nez v1, :cond_4

    .line 374
    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v1, v7}, Lcom/b/a/aa;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_4

    .line 376
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v0, p1}, Lcom/b/a/aa;->a(Lcom/b/a/ap;)V

    .line 377
    sget-object v0, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    invoke-interface {p1, v1, v0}, Lcom/b/a/ap;->a(Landroid/graphics/Bitmap;Lcom/b/a/ae;)V

    goto :goto_1

    .line 382
    :cond_4
    invoke-interface {p1, v0}, Lcom/b/a/ap;->b(Landroid/graphics/drawable/Drawable;)V

    .line 384
    new-instance v0, Lcom/b/a/aq;

    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v4, p0, Lcom/b/a/ak;->d:Z

    iget v5, p0, Lcom/b/a/ak;->h:I

    iget-object v6, p0, Lcom/b/a/ak;->j:Landroid/graphics/drawable/Drawable;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/b/a/aq;-><init>(Lcom/b/a/aa;Lcom/b/a/ap;Lcom/b/a/ai;ZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Lcom/b/a/a;)V

    goto :goto_1
.end method

.method public b()Lcom/b/a/ak;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/ak;->e:Z

    .line 255
    return-object p0
.end method

.method public b(I)Lcom/b/a/ak;
    .locals 2
    .parameter

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/b/a/ak;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    iput p1, p0, Lcom/b/a/ak;->h:I

    .line 143
    return-object p0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 266
    invoke-static {}, Lcom/b/a/au;->a()V

    .line 268
    iget-boolean v2, p0, Lcom/b/a/ak;->f:Z

    if-eqz v2, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/b/a/ak;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    .line 275
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/b/a/ak;->a(J)Lcom/b/a/ai;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/b/a/au;->a(Lcom/b/a/ai;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v5, Lcom/b/a/s;

    iget-object v2, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-boolean v3, p0, Lcom/b/a/ak;->d:Z

    invoke-direct {v5, v2, v0, v3, v1}, Lcom/b/a/s;-><init>(Lcom/b/a/aa;Lcom/b/a/ai;ZLjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v0, v0, Lcom/b/a/aa;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v2, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v2, v2, Lcom/b/a/aa;->d:Lcom/b/a/k;

    iget-object v3, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v3, v3, Lcom/b/a/aa;->e:Lcom/b/a/e;

    iget-object v4, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v4, v4, Lcom/b/a/aa;->f:Lcom/b/a/am;

    iget-object v6, p0, Lcom/b/a/ak;->b:Lcom/b/a/aa;

    iget-object v6, v6, Lcom/b/a/aa;->d:Lcom/b/a/k;

    iget-object v6, v6, Lcom/b/a/k;->d:Lcom/b/a/o;

    invoke-static/range {v0 .. v6}, Lcom/b/a/d;->a(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;Lcom/b/a/o;)Lcom/b/a/d;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/b/a/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
