.class Lcom/millennialmedia/android/MMAdView$BannerBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Lcom/millennialmedia/android/DTOResizeParameters;

.field final synthetic d:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    .line 744
    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->d:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a:I

    .line 745
    iget v0, p2, Lcom/millennialmedia/android/DTOResizeParameters;->e:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->b:I

    .line 746
    return-void
.end method

.method private a(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    .line 783
    add-int v0, p1, p3

    add-int/2addr v0, p2

    if-le v0, p4, :cond_2

    .line 785
    sub-int v0, p4, p3

    add-int/2addr p2, v0

    .line 786
    if-gez p2, :cond_1

    .line 787
    const/4 p2, 0x0

    move p3, p4

    .line 796
    :cond_0
    :goto_0
    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;-><init>(Lcom/millennialmedia/android/MMAdView$BannerBounds;Lcom/millennialmedia/android/MMAdView$1;)V

    .line 797
    sub-int v1, p2, p1

    iput v1, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->a:I

    .line 798
    iput p3, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->b:I

    .line 799
    return-object v0

    .line 789
    :cond_1
    add-int v0, p2, p3

    if-le v0, p4, :cond_0

    .line 790
    sub-int p2, p4, p3

    goto :goto_0

    .line 792
    :cond_2
    if-gtz p2, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 756
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 757
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 758
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 760
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Lcom/millennialmedia/android/DTOResizeParameters;->d:I

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v2, Lcom/millennialmedia/android/DTOResizeParameters;->a:I

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->g:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->b:I

    iput v2, v1, Lcom/millennialmedia/android/DTOResizeParameters;->a:I

    .line 763
    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->a:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a:I

    .line 764
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 768
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 769
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    .line 770
    const/4 v1, 0x1

    aget v0, v0, v1

    .line 772
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Lcom/millennialmedia/android/DTOResizeParameters;->e:I

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v2, Lcom/millennialmedia/android/DTOResizeParameters;->b:I

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v3, v3, Lcom/millennialmedia/android/DTOResizeParameters;->h:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->a(IIII)Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->b:I

    iput v2, v1, Lcom/millennialmedia/android/DTOResizeParameters;->b:I

    .line 775
    iget v0, v0, Lcom/millennialmedia/android/MMAdView$BannerBounds$BoundsResult;->a:I

    iput v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->b:I

    .line 776
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->a:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 812
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c:Lcom/millennialmedia/android/DTOResizeParameters;

    iget v0, v0, Lcom/millennialmedia/android/DTOResizeParameters;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 813
    return-object p1
.end method

.method a()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->b()V

    .line 751
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->c()V

    .line 752
    return-void
.end method
