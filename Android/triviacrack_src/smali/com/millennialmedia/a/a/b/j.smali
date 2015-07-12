.class public final Lcom/millennialmedia/a/a/b/j;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic g:Z

.field private static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field b:[Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/millennialmedia/a/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field private i:Lcom/millennialmedia/a/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/j",
            "<TK;TV;>.com/millennialmedia/a/a/b/m;"
        }
    .end annotation
.end field

.field private j:Lcom/millennialmedia/a/a/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/b/j",
            "<TK;TV;>.com/millennialmedia/a/a/b/n;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/millennialmedia/a/a/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/millennialmedia/a/a/b/j;->g:Z

    .line 47
    new-instance v0, Lcom/millennialmedia/a/a/b/j$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/j$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/j;->h:Ljava/util/Comparator;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/millennialmedia/a/a/b/j;->h:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/j;-><init>(Ljava/util/Comparator;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 58
    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    .line 59
    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    .line 85
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/j;->a:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/millennialmedia/a/a/b/p;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/p;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->f:I

    .line 91
    return-void

    .line 85
    :cond_0
    sget-object p1, Lcom/millennialmedia/a/a/b/j;->h:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 272
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    .line 273
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/j;->a([Lcom/millennialmedia/a/a/b/p;)[Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->f:I

    .line 630
    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/b/p;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 450
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 451
    iget-object v4, v3, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 452
    iget-object v5, v3, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 455
    iput-object v4, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 456
    if-eqz v4, :cond_0

    .line 457
    iput-object p1, v4, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 460
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 463
    iput-object p1, v3, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 464
    iput-object v3, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 467
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/millennialmedia/a/a/b/p;->i:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 469
    iget v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    if-eqz v5, :cond_1

    iget v1, v5, Lcom/millennialmedia/a/a/b/p;->i:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 471
    return-void

    :cond_2
    move v2, v1

    .line 467
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 356
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 357
    if-eqz p2, :cond_0

    .line 358
    iput-object v0, p2, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 361
    :cond_0
    if-eqz v0, :cond_3

    .line 362
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    if-ne v1, p1, :cond_1

    .line 363
    iput-object p2, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-boolean v1, Lcom/millennialmedia/a/a/b/j;->g:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_2
    iput-object p2, v0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    goto :goto_0

    .line 369
    :cond_3
    iget v0, p1, Lcom/millennialmedia/a/a/b/p;->g:I

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 370
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    aput-object p2, v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 260
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([Lcom/millennialmedia/a/a/b/p;)[Lcom/millennialmedia/a/a/b/p;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)[",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 639
    array-length v6, p0

    .line 642
    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [Lcom/millennialmedia/a/a/b/p;

    .line 643
    new-instance v8, Lcom/millennialmedia/a/a/b/l;

    invoke-direct {v8}, Lcom/millennialmedia/a/a/b/l;-><init>()V

    .line 644
    new-instance v9, Lcom/millennialmedia/a/a/b/k;

    invoke-direct {v9}, Lcom/millennialmedia/a/a/b/k;-><init>()V

    .line 645
    new-instance v10, Lcom/millennialmedia/a/a/b/k;

    invoke-direct {v10}, Lcom/millennialmedia/a/a/b/k;-><init>()V

    move v5, v1

    .line 648
    :goto_0
    if-ge v5, v6, :cond_7

    .line 649
    aget-object v4, p0, v5

    .line 650
    if-nez v4, :cond_0

    .line 648
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {v8, v4}, Lcom/millennialmedia/a/a/b/l;->a(Lcom/millennialmedia/a/a/b/p;)V

    move v0, v1

    move v2, v1

    .line 658
    :goto_2
    invoke-virtual {v8}, Lcom/millennialmedia/a/a/b/l;->a()Lcom/millennialmedia/a/a/b/p;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 659
    iget v11, v11, Lcom/millennialmedia/a/a/b/p;->g:I

    and-int/2addr v11, v6

    if-nez v11, :cond_1

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 662
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 669
    :cond_2
    if-lez v2, :cond_5

    if-lez v0, :cond_5

    .line 670
    invoke-virtual {v9, v2}, Lcom/millennialmedia/a/a/b/k;->a(I)V

    .line 671
    invoke-virtual {v10, v0}, Lcom/millennialmedia/a/a/b/k;->a(I)V

    .line 672
    invoke-virtual {v8, v4}, Lcom/millennialmedia/a/a/b/l;->a(Lcom/millennialmedia/a/a/b/p;)V

    .line 673
    :goto_3
    invoke-virtual {v8}, Lcom/millennialmedia/a/a/b/l;->a()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 674
    iget v2, v0, Lcom/millennialmedia/a/a/b/p;->g:I

    and-int/2addr v2, v6

    if-nez v2, :cond_3

    .line 675
    invoke-virtual {v9, v0}, Lcom/millennialmedia/a/a/b/k;->a(Lcom/millennialmedia/a/a/b/p;)V

    goto :goto_3

    .line 677
    :cond_3
    invoke-virtual {v10, v0}, Lcom/millennialmedia/a/a/b/k;->a(Lcom/millennialmedia/a/a/b/p;)V

    goto :goto_3

    .line 680
    :cond_4
    invoke-virtual {v9}, Lcom/millennialmedia/a/a/b/k;->a()Lcom/millennialmedia/a/a/b/p;

    move-result-object v4

    .line 681
    invoke-virtual {v10}, Lcom/millennialmedia/a/a/b/k;->a()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 689
    :goto_4
    aput-object v4, v7, v5

    .line 690
    add-int v2, v5, v6

    aput-object v0, v7, v2

    goto :goto_1

    .line 682
    :cond_5
    if-lez v2, :cond_6

    move-object v0, v3

    .line 683
    goto :goto_4

    :cond_6
    move-object v0, v4

    move-object v4, v3

    .line 685
    goto :goto_4

    .line 692
    :cond_7
    return-object v7
.end method

.method private b(Lcom/millennialmedia/a/a/b/p;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 479
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 480
    iget-object v4, v3, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 481
    iget-object v5, v3, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 484
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 485
    if-eqz v5, :cond_0

    .line 486
    iput-object p1, v5, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 489
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 492
    iput-object p1, v3, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 493
    iput-object v3, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 496
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lcom/millennialmedia/a/a/b/p;->i:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 498
    iget v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    if-eqz v4, :cond_1

    iget v1, v4, Lcom/millennialmedia/a/a/b/p;->i:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 500
    return-void

    :cond_2
    move v2, v1

    .line 496
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/millennialmedia/a/a/b/p;Z)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 384
    :goto_0
    if-eqz p1, :cond_1

    .line 385
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 386
    iget-object v4, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 387
    if-eqz v3, :cond_2

    iget v0, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    move v2, v0

    .line 388
    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 390
    :goto_2
    sub-int v5, v2, v0

    .line 391
    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    .line 392
    iget-object v3, v4, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 393
    iget-object v0, v4, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 394
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    move v2, v0

    .line 396
    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 398
    :goto_4
    sub-int/2addr v0, v2

    .line 399
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;)V

    .line 406
    :goto_5
    if-eqz p2, :cond_a

    .line 442
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v2, v1

    .line 387
    goto :goto_1

    :cond_3
    move v0, v1

    .line 388
    goto :goto_2

    :cond_4
    move v2, v1

    .line 394
    goto :goto_3

    :cond_5
    move v0, v1

    .line 396
    goto :goto_4

    .line 402
    :cond_6
    sget-boolean v2, Lcom/millennialmedia/a/a/b/j;->g:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 403
    :cond_7
    invoke-direct {p0, v4}, Lcom/millennialmedia/a/a/b/j;->b(Lcom/millennialmedia/a/a/b/p;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;)V

    goto :goto_5

    .line 410
    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    .line 411
    iget-object v4, v3, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 412
    iget-object v0, v3, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 413
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    move v2, v0

    .line 414
    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 416
    :goto_8
    sub-int/2addr v0, v2

    .line 417
    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 418
    :cond_9
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/j;->b(Lcom/millennialmedia/a/a/b/p;)V

    .line 424
    :goto_9
    if-nez p2, :cond_1

    .line 384
    :cond_a
    iget-object p1, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    goto :goto_0

    :cond_b
    move v2, v1

    .line 413
    goto :goto_7

    :cond_c
    move v0, v1

    .line 414
    goto :goto_8

    .line 420
    :cond_d
    sget-boolean v2, Lcom/millennialmedia/a/a/b/j;->g:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :cond_e
    invoke-direct {p0, v3}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/j;->b(Lcom/millennialmedia/a/a/b/p;)V

    goto :goto_9

    .line 428
    :cond_f
    if-nez v5, :cond_10

    .line 429
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 430
    if-eqz p2, :cond_a

    goto :goto_6

    .line 435
    :cond_10
    sget-boolean v3, Lcom/millennialmedia/a/a/b/j;->g:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 436
    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 437
    if-nez p2, :cond_a

    goto :goto_6
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;Z)Lcom/millennialmedia/a/a/b/p;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;Z)Lcom/millennialmedia/a/a/b/p;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v7, p0, Lcom/millennialmedia/a/a/b/j;->a:Ljava/util/Comparator;

    .line 160
    iget-object v8, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/j;->a(I)I

    move-result v3

    .line 162
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v3, v0

    .line 163
    aget-object v1, v8, v9

    .line 164
    const/4 v0, 0x0

    .line 166
    if-eqz v1, :cond_a

    .line 171
    sget-object v0, Lcom/millennialmedia/a/a/b/j;->h:Ljava/util/Comparator;

    if-ne v7, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 175
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, v1, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 180
    :goto_1
    if-nez v4, :cond_3

    move-object v2, v1

    .line 227
    :cond_0
    :goto_2
    return-object v2

    :cond_1
    move-object v0, v2

    .line 171
    goto :goto_0

    .line 175
    :cond_2
    iget-object v4, v1, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;

    invoke-interface {v7, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 185
    :cond_3
    if-gez v4, :cond_4

    iget-object v5, v1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 187
    :goto_3
    if-nez v5, :cond_5

    move v6, v4

    .line 196
    :goto_4
    if-eqz p2, :cond_0

    .line 201
    iget-object v4, p0, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    .line 203
    if-nez v1, :cond_8

    .line 206
    sget-object v0, Lcom/millennialmedia/a/a/b/j;->h:Ljava/util/Comparator;

    if-ne v7, v0, :cond_6

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_6

    .line 207
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_4
    iget-object v5, v1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    goto :goto_3

    :cond_5
    move-object v1, v5

    .line 192
    goto :goto_0

    .line 210
    :cond_6
    new-instance v0, Lcom/millennialmedia/a/a/b/p;

    iget-object v5, v4, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/b/p;-><init>(Lcom/millennialmedia/a/a/b/p;Ljava/lang/Object;ILcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 211
    aput-object v0, v8, v9

    .line 222
    :goto_5
    iget v1, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    iget v2, p0, Lcom/millennialmedia/a/a/b/j;->f:I

    if-le v1, v2, :cond_7

    .line 223
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/j;->a()V

    .line 225
    :cond_7
    iget v1, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    move-object v2, v0

    .line 227
    goto :goto_2

    .line 213
    :cond_8
    new-instance v0, Lcom/millennialmedia/a/a/b/p;

    iget-object v5, v4, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/b/p;-><init>(Lcom/millennialmedia/a/a/b/p;Ljava/lang/Object;ILcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 214
    if-gez v6, :cond_9

    .line 215
    iput-object v0, v1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 219
    :goto_6
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/a/a/b/j;->b(Lcom/millennialmedia/a/a/b/p;Z)V

    goto :goto_5

    .line 217
    :cond_9
    iput-object v0, v1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    goto :goto_6

    :cond_a
    move v6, v0

    goto :goto_4
.end method

.method a(Ljava/util/Map$Entry;)Lcom/millennialmedia/a/a/b/p;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 255
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return-object v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/millennialmedia/a/a/b/p;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, p1, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 287
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, p1, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, v0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    .line 288
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 291
    :cond_0
    iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 292
    iget-object v1, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 293
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 294
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 305
    iget v3, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    iget v4, v1, Lcom/millennialmedia/a/a/b/p;->i:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/p;->b()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 307
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V

    .line 311
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 312
    if-eqz v3, :cond_6

    .line 313
    iget v1, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 314
    iput-object v3, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 315
    iput-object v0, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 316
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 319
    :goto_1
    iget-object v3, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 320
    if-eqz v3, :cond_1

    .line 321
    iget v2, v3, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 322
    iput-object v3, v0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 323
    iput-object v0, v3, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;

    .line 324
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    .line 326
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/millennialmedia/a/a/b/p;->i:I

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 342
    :goto_2
    return-void

    .line 305
    :cond_2
    invoke-virtual {v1}, Lcom/millennialmedia/a/a/b/p;->a()Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_3
    if-eqz v0, :cond_4

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 331
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;

    .line 339
    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/millennialmedia/a/a/b/j;->b(Lcom/millennialmedia/a/a/b/p;Z)V

    .line 340
    iget v0, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    .line 341
    iget v0, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    goto :goto_2

    .line 332
    :cond_4
    if-eqz v1, :cond_5

    .line 333
    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    .line 334
    iput-object v5, p1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;

    goto :goto_3

    .line 336
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/millennialmedia/a/a/b/p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V

    .line 350
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->b:[Lcom/millennialmedia/a/a/b/p;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    .line 129
    iget v0, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/millennialmedia/a/a/b/j;->e:I

    .line 132
    iget-object v2, p0, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    .line 133
    iget-object v0, v2, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    :goto_0
    if-eq v0, v2, :cond_0

    .line 134
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 135
    iput-object v3, v0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iput-object v3, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_0
    iput-object v2, v2, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;

    iput-object v2, v2, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    .line 140
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->i:Lcom/millennialmedia/a/a/b/m;

    .line 509
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/b/m;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/m;-><init>(Lcom/millennialmedia/a/a/b/j;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/j;->i:Lcom/millennialmedia/a/a/b/m;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/j;->j:Lcom/millennialmedia/a/a/b/n;

    .line 516
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/b/n;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/n;-><init>(Lcom/millennialmedia/a/a/b/j;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/j;->j:Lcom/millennialmedia/a/a/b/n;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/lang/Object;Z)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 119
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    .line 120
    iput-object p2, v0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    .line 121
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/j;->b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/millennialmedia/a/a/b/j;->d:I

    return v0
.end method
