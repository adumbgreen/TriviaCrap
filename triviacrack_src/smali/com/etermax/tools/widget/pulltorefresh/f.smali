.class final Lcom/etermax/tools/widget/pulltorefresh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;Landroid/os/Handler;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->f:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->g:J

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->h:I

    .line 33
    iput-object p2, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->e:Landroid/os/Handler;

    .line 34
    iput p3, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->d:I

    .line 35
    iput p4, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->c:I

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->b:Landroid/view/animation/Interpolator;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->f:Z

    .line 72
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 46
    iget-wide v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->g:J

    .line 65
    :goto_0
    iget-boolean v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->c:I

    iget v1, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->h:I

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->e:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->g:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    const-wide/16 v2, 0xbe

    div-long/2addr v0, v2

    .line 56
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 58
    iget v2, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->d:I

    iget v3, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->b:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 60
    iget v1, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->d:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->h:I

    .line 61
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;

    iget v1, p0, Lcom/etermax/tools/widget/pulltorefresh/f;->h:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0
.end method
