.class public abstract Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:Z

.field protected c:I

.field protected d:I

.field e:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lcom/etermax/tools/widget/pulltorefresh/b;

.field private m:Lcom/etermax/tools/widget/pulltorefresh/b;

.field private final n:Landroid/os/Handler;

.field private o:Lcom/etermax/tools/widget/pulltorefresh/e;

.field private p:Lcom/etermax/tools/widget/pulltorefresh/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase",
            "<TT;>.com/etermax/tools/widget/pulltorefresh/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput-boolean v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b:Z

    .line 100
    iput v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 101
    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    .line 104
    iput-boolean v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->j:Z

    .line 107
    iput-boolean v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->k:Z

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/os/Handler;

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 569
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v3

    .line 571
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    packed-switch v0, :pswitch_data_0

    .line 577
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a:F

    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h:F

    sub-float/2addr v0, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 581
    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 583
    if-eqz v0, :cond_1

    .line 584
    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 585
    iput v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 587
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    packed-switch v0, :pswitch_data_1

    .line 614
    :goto_1
    return v1

    .line 573
    :pswitch_0
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a:F

    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h:F

    sub-float/2addr v0, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->b()V

    goto :goto_1

    .line 592
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->b()V

    goto :goto_1

    .line 598
    :cond_0
    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    if-ne v4, v1, :cond_1

    iget v4, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 599
    iput v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 601
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 606
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->d()V

    goto :goto_1

    .line 603
    :pswitch_4
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->d()V

    goto :goto_1

    .line 614
    :cond_1
    if-eq v3, v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 587
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 601
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 618
    iget v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    packed-switch v1, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return v0

    .line 620
    :pswitch_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a()Z

    move-result v0

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b()Z

    move-result v0

    goto :goto_0

    .line 624
    :pswitch_2
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->p:Lcom/etermax/tools/widget/pulltorefresh/f;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->p:Lcom/etermax/tools/widget/pulltorefresh/f;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/f;->a()V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 484
    new-instance v0, Lcom/etermax/tools/widget/pulltorefresh/f;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/etermax/tools/widget/pulltorefresh/f;-><init>(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->p:Lcom/etermax/tools/widget/pulltorefresh/f;

    .line 485
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->p:Lcom/etermax/tools/widget/pulltorefresh/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_1
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 545
    if-nez v0, :cond_0

    .line 546
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 549
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 550
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 552
    if-lez v0, :cond_1

    .line 553
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 557
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 558
    return-void

    .line 555
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract a()Z
.end method

.method protected final a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->j:Z

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 307
    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 331
    goto :goto_0

    .line 313
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h:F

    .line 314
    invoke-direct {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->g()Z

    goto :goto_0

    .line 319
    :pswitch_1
    iput-boolean v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b:Z

    .line 321
    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->o:Lcom/etermax/tools/widget/pulltorefresh/e;

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 323
    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->o:Lcom/etermax/tools/widget/pulltorefresh/e;

    invoke-interface {v1}, Lcom/etermax/tools/widget/pulltorefresh/e;->a()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 491
    invoke-virtual {p0, v2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 493
    iput v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->e:Landroid/view/View;

    .line 498
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->e:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 501
    sget v0, Lcom/etermax/o;->pull_down_refresh:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    sget v0, Lcom/etermax/o;->loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 503
    sget v0, Lcom/etermax/o;->release_refresh:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 506
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v0, v7, :cond_1

    .line 507
    :cond_0
    new-instance v0, Lcom/etermax/tools/widget/pulltorefresh/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pulltorefresh/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    .line 509
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v6, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    .line 514
    :cond_1
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v0, v7, :cond_3

    .line 515
    :cond_2
    new-instance v0, Lcom/etermax/tools/widget/pulltorefresh/b;

    const/4 v2, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/widget/pulltorefresh/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    .line 516
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(Landroid/view/View;)V

    .line 519
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    .line 523
    :cond_3
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    packed-switch v0, :pswitch_data_0

    .line 532
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    neg-int v0, v0

    invoke-virtual {p0, v6, v0, v6, v6}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 538
    :goto_0
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-eq v0, v7, :cond_4

    .line 539
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    .line 541
    :cond_4
    return-void

    .line 525
    :pswitch_0
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    neg-int v0, v0

    iget v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    neg-int v1, v1

    invoke-virtual {p0, v6, v0, v6, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_0

    .line 528
    :pswitch_1
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    neg-int v0, v0

    invoke-virtual {p0, v6, v6, v6, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract b()Z
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    const v7, 0x38d1b717

    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 336
    .line 338
    iget-boolean v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->k:Z

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 343
    iget v3, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h:F

    sub-float v3, v2, v3

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->g:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->g:F

    .line 347
    iput v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h:F

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    invoke-direct {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 355
    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 356
    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v2, v6, :cond_3

    :cond_2
    cmpl-float v2, v3, v7

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v0, v6, :cond_5

    .line 360
    iput v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    move v0, v1

    goto :goto_0

    .line 362
    :cond_3
    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-eq v2, v8, :cond_4

    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v2, v6, :cond_0

    :cond_4
    cmpg-float v2, v3, v7

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    if-ne v0, v6, :cond_5

    .line 366
    iput v8, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    :cond_5
    move v0, v1

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f()V

    .line 210
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    .line 280
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iput v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 447
    iput-boolean v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->b:Z

    .line 449
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->a()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->a()V

    .line 456
    :cond_1
    invoke-virtual {p0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    .line 457
    return-void
.end method

.method public final getAdapterView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->e:Landroid/view/View;

    return-object v0
.end method

.method protected final getCurrentMode()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    return v0
.end method

.method protected final getFooterLayout()Lcom/etermax/tools/widget/pulltorefresh/b;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    return-object v0
.end method

.method protected final getHeaderHeight()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    return v0
.end method

.method protected final getHeaderLayout()Lcom/etermax/tools/widget/pulltorefresh/b;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    return-object v0
.end method

.method protected final getMode()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->d:I

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->e:Landroid/view/View;

    return-object v0
.end method

.method public final setDisableScrollingWhileRefreshing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->j:Z

    .line 200
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 1
    .parameter

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    .line 476
    return-void
.end method

.method public setLoadingAnimation(Lcom/etermax/tools/widget/pulltorefresh/c;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setLoadingListener(Lcom/etermax/tools/widget/pulltorefresh/c;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setLoadingListener(Lcom/etermax/tools/widget/pulltorefresh/c;)V

    .line 657
    :cond_1
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 648
    return-void
.end method

.method public final setOnRefreshListener(Lcom/etermax/tools/widget/pulltorefresh/e;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->o:Lcom/etermax/tools/widget/pulltorefresh/e;

    .line 220
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setPullLabel(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setPullLabel(Ljava/lang/String;)V

    .line 261
    :cond_1
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->k:Z

    .line 230
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 292
    const/4 v0, 0x3

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 294
    :cond_0
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 2
    .parameter

    .prologue
    .line 460
    const/4 v0, 0x2

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->c:I

    .line 462
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->c()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/b;->c()V

    .line 469
    :cond_1
    if-eqz p1, :cond_2

    .line 470
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->a(I)V

    .line 472
    :cond_2
    return-void

    .line 470
    :cond_3
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->f:I

    goto :goto_0
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 276
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->l:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->m:Lcom/etermax/tools/widget/pulltorefresh/b;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 246
    :cond_1
    return-void
.end method
