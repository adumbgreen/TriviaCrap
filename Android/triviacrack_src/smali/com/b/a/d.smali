.class abstract Lcom/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/b/a/aa;

.field final b:Lcom/b/a/k;

.field final c:Lcom/b/a/e;

.field final d:Lcom/b/a/am;

.field final e:Ljava/lang/String;

.field final f:Lcom/b/a/ai;

.field final g:Z

.field h:Lcom/b/a/a;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/graphics/Bitmap;

.field k:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field l:Lcom/b/a/ae;

.field m:Ljava/lang/Exception;

.field n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/b/a/d;->o:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/b/a/d$1;

    invoke-direct {v0}, Lcom/b/a/d$1;-><init>()V

    sput-object v0, Lcom/b/a/d;->p:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    .line 80
    iput-object p2, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    .line 81
    iput-object p3, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    .line 82
    iput-object p4, p0, Lcom/b/a/d;->d:Lcom/b/a/am;

    .line 83
    invoke-virtual {p5}, Lcom/b/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    .line 84
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    .line 85
    iget-boolean v0, p5, Lcom/b/a/a;->d:Z

    iput-boolean v0, p0, Lcom/b/a/d;->g:Z

    .line 86
    iput-object p5, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    .line 87
    return-void
.end method

.method static a(Lcom/b/a/ai;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 405
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 407
    invoke-virtual {p0}, Lcom/b/a/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 408
    iget v0, p0, Lcom/b/a/ai;->f:I

    .line 409
    iget v1, p0, Lcom/b/a/ai;->g:I

    .line 411
    iget v6, p0, Lcom/b/a/ai;->j:F

    .line 412
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    .line 413
    iget-boolean v7, p0, Lcom/b/a/ai;->m:Z

    if-eqz v7, :cond_3

    .line 414
    iget v7, p0, Lcom/b/a/ai;->k:F

    iget v8, p0, Lcom/b/a/ai;->l:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 420
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/b/a/ai;->h:Z

    if-eqz v6, :cond_5

    .line 421
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 422
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 424
    cmpl-float v6, v0, v1

    if-lez v6, :cond_4

    .line 426
    int-to-float v6, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 427
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    move v9, v3

    move v3, v2

    move v2, v9

    .line 435
    :goto_1
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v9, v1

    move v1, v4

    move v4, v9

    move v10, v3

    move v3, v2

    move v2, v10

    .line 451
    :goto_2
    if-eqz p2, :cond_1

    .line 452
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 455
    :cond_1
    const/4 v6, 0x1

    move-object v0, p1

    .line 456
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    if-eq v0, p1, :cond_2

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 462
    :cond_2
    return-object p1

    .line 416
    :cond_3
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 431
    :cond_4
    int-to-float v6, v3

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 432
    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    move v10, v4

    move v4, v3

    move v3, v10

    .line 433
    goto :goto_1

    .line 436
    :cond_5
    iget-boolean v6, p0, Lcom/b/a/ai;->i:Z

    if-eqz v6, :cond_7

    .line 437
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 438
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 439
    cmpg-float v6, v0, v1

    if-gez v6, :cond_6

    .line 440
    :goto_3
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    move v1, v4

    move v9, v4

    move v4, v2

    move v2, v9

    .line 441
    goto :goto_2

    :cond_6
    move v0, v1

    .line 439
    goto :goto_3

    .line 441
    :cond_7
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-ne v0, v3, :cond_8

    if-eq v1, v2, :cond_9

    .line 445
    :cond_8
    int-to-float v0, v0

    int-to-float v6, v3

    div-float/2addr v0, v6

    .line 446
    int-to-float v1, v1

    int-to-float v6, v2

    div-float/2addr v1, v6

    .line 447
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_9
    move v1, v4

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ar;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    .line 347
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ar;

    .line 348
    invoke-interface {v0, v2}, Lcom/b/a/ar;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 350
    if-nez p1, :cond_1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation "

    .line 352
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-interface {v0}, Lcom/b/a/ar;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null after "

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous transformation(s).\n\nTransformation list:\n"

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ar;

    .line 358
    invoke-interface {v0}, Lcom/b/a/ar;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    :cond_0
    sget-object v0, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/d$2;

    invoke-direct {v3, v2}, Lcom/b/a/d$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 393
    :goto_2
    return-object v0

    .line 368
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 369
    sget-object v2, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/d$3;

    invoke-direct {v3, v0}, Lcom/b/a/d$3;-><init>(Lcom/b/a/ar;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 376
    goto :goto_2

    .line 380
    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    sget-object v2, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v3, Lcom/b/a/d$4;

    invoke-direct {v3, v0}, Lcom/b/a/d$4;-><init>(Lcom/b/a/ar;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 388
    goto :goto_2

    .line 346
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 393
    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;Lcom/b/a/o;)Lcom/b/a/d;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v0

    iget v0, v0, Lcom/b/a/ai;->d:I

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lcom/b/a/al;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/al;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 303
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p5}, Lcom/b/a/a;->c()Lcom/b/a/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/ai;->c:Landroid/net/Uri;

    .line 285
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 286
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v2, "photo"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    new-instance v0, Lcom/b/a/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/g;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto :goto_0

    .line 290
    :cond_1
    const-string v1, "media"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    new-instance v0, Lcom/b/a/w;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/w;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Lcom/b/a/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/i;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto :goto_0

    .line 295
    :cond_3
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android_asset"

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    new-instance v0, Lcom/b/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 299
    :cond_4
    new-instance v0, Lcom/b/a/r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/r;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 300
    :cond_5
    const-string v0, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    new-instance v0, Lcom/b/a/al;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/al;-><init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    goto/16 :goto_0

    .line 303
    :cond_6
    new-instance v0, Lcom/b/a/y;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/b/a/y;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;Lcom/b/a/o;)V

    goto/16 :goto_0
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x1

    .line 336
    if-gt p3, p1, :cond_0

    if-le p2, p0, :cond_1

    .line 337
    :cond_0
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 338
    int-to-float v1, p2

    int-to-float v2, p0

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 339
    if-ge v0, v1, :cond_2

    .line 341
    :cond_1
    :goto_0
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 343
    return-void

    :cond_2
    move v0, v1

    .line 339
    goto :goto_0
.end method

.method static a(IILandroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/b/a/d;->a(IIIILandroid/graphics/BitmapFactory$Options;)V

    .line 331
    return-void
.end method

.method static a(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1
    .parameter

    .prologue
    .line 326
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/b/a/ai;)V
    .locals 4
    .parameter

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/b/a/ai;->c()Ljava/lang/String;

    move-result-object v1

    .line 272
    sget-object v0, Lcom/b/a/d;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 273
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 274
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method static c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .parameter

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/b/a/ai;->d()Z

    move-result v2

    .line 313
    iget-object v0, p0, Lcom/b/a/ai;->n:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 314
    :goto_0
    const/4 v0, 0x0

    .line 315
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 318
    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/b/a/ai;->n:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 322
    :cond_1
    return-object v0

    .line 313
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
.end method

.method a()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/b/a/d;->l:Lcom/b/a/ae;

    return-object v0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/b/a/d;->n:I

    .line 91
    return-void
.end method

.method a(Lcom/b/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    .line 177
    iget-object v1, p1, Lcom/b/a/a;->b:Lcom/b/a/ai;

    .line 179
    iget-object v2, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    if-nez v2, :cond_3

    .line 180
    iput-object p1, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/b/a/d;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    :cond_0
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to empty hunter"

    invoke-static {v0, v2, v1, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to "

    invoke-static {p0, v3}, Lcom/b/a/au;->a(Lcom/b/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/b/a/d;->i:Ljava/util/List;

    if-nez v2, :cond_4

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/b/a/d;->i:Ljava/util/List;

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/b/a/d;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    if-eqz v0, :cond_1

    .line 198
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to "

    invoke-static {p0, v3}, Lcom/b/a/au;->a(Lcom/b/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method b()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/b/a/d;->g:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    iget-object v1, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/b/a/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/am;

    invoke-virtual {v1}, Lcom/b/a/am;->a()V

    .line 136
    sget-object v1, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    iput-object v1, p0, Lcom/b/a/d;->l:Lcom/b/a/ae;

    .line 137
    iget-object v1, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v1, v1, Lcom/b/a/aa;->k:Z

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v3}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {p0, v0}, Lcom/b/a/d;->a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v1, v1, Lcom/b/a/aa;->k:Z

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v3}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/am;

    invoke-virtual {v1, v0}, Lcom/b/a/am;->a(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v1, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v1}, Lcom/b/a/ai;->e()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/b/a/d;->n:I

    if-eqz v1, :cond_0

    .line 152
    :cond_3
    sget-object v1, Lcom/b/a/d;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->f()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/b/a/d;->n:I

    if-eqz v2, :cond_5

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    iget v3, p0, Lcom/b/a/d;->n:I

    invoke-static {v2, v0, v3}, Lcom/b/a/d;->a(Lcom/b/a/ai;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v2, v2, Lcom/b/a/aa;->k:Z

    if-eqz v2, :cond_5

    .line 156
    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v4}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->g()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    iget-object v2, v2, Lcom/b/a/ai;->e:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/b/a/d;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v2, v2, Lcom/b/a/aa;->k:Z

    if-eqz v2, :cond_6

    .line 162
    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-virtual {v4}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/b/a/d;->d:Lcom/b/a/am;

    invoke-virtual {v1, v0}, Lcom/b/a/am;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Lcom/b/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    if-ne v0, p1, :cond_2

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "Hunter"

    const-string v1, "removed"

    iget-object v2, p1, Lcom/b/a/a;->b:Lcom/b/a/ai;

    invoke-virtual {v2}, Lcom/b/a/ai;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from "

    invoke-static {p0, v3}, Lcom/b/a/au;->a(Lcom/b/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    return-void

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/b/a/d;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/b/a/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/b/a/d;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/d;->i:Ljava/util/List;

    .line 216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    .line 218
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d;->k:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/b/a/d;->g:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/b/a/d;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/b/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method i()Lcom/b/a/ai;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    return-object v0
.end method

.method j()Lcom/b/a/a;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/b/a/d;->h:Lcom/b/a/a;

    return-object v0
.end method

.method k()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    return-object v0
.end method

.method l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/b/a/d;->i:Ljava/util/List;

    return-object v0
.end method

.method m()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/b/a/d;->m:Ljava/lang/Exception;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/b/a/d;->f:Lcom/b/a/ai;

    invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/ai;)V

    .line 97
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/aa;

    iget-boolean v0, v0, Lcom/b/a/aa;->k:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Hunter"

    const-string v1, "executing"

    invoke-static {p0}, Lcom/b/a/au;->a(Lcom/b/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/d;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d;->j:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/b/a/d;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->c(Lcom/b/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/b/a/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 123
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 125
    :goto_1
    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->a(Lcom/b/a/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/b/a/q; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    iput-object v0, p0, Lcom/b/a/d;->m:Ljava/lang/Exception;

    .line 110
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->c(Lcom/b/a/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    :try_start_3
    iput-object v0, p0, Lcom/b/a/d;->m:Ljava/lang/Exception;

    .line 113
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->b(Lcom/b/a/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :catch_2
    move-exception v0

    .line 115
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/b/a/d;->d:Lcom/b/a/am;

    invoke-virtual {v2}, Lcom/b/a/am;->e()Lcom/b/a/ao;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/b/a/ao;->a(Ljava/io/PrintWriter;)V

    .line 117
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/b/a/d;->m:Ljava/lang/Exception;

    .line 118
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->c(Lcom/b/a/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :catch_3
    move-exception v0

    .line 120
    :try_start_5
    iput-object v0, p0, Lcom/b/a/d;->m:Ljava/lang/Exception;

    .line 121
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/k;

    invoke-virtual {v0, p0}, Lcom/b/a/k;->c(Lcom/b/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
