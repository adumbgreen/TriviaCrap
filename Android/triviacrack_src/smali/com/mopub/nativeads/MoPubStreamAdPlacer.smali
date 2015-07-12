.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_VIEW_TYPE:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/mopub/nativeads/PositioningSource;

.field private final e:Lcom/mopub/nativeads/u;

.field private final f:Lcom/mopub/nativeads/o;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/mopub/nativeads/ac;

.field private j:Z

.field private k:Z

.field private l:Lcom/mopub/nativeads/ac;

.field private m:Lcom/mopub/nativeads/MoPubAdRenderer;

.field private n:Ljava/lang/String;

.field private o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private p:I

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/mopub/nativeads/u;

    invoke-direct {v0}, Lcom/mopub/nativeads/u;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/o;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/o;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/c;

    invoke-direct {v2, p2}, Lcom/mopub/nativeads/c;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/u;Lcom/mopub/nativeads/o;Lcom/mopub/nativeads/PositioningSource;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/mopub/nativeads/u;

    invoke-direct {v0}, Lcom/mopub/nativeads/u;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/o;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/o;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/mopub/nativeads/ae;

    invoke-direct {v2, p1}, Lcom/mopub/nativeads/ae;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/mopub/nativeads/u;Lcom/mopub/nativeads/o;Lcom/mopub/nativeads/PositioningSource;)V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/nativeads/u;Lcom/mopub/nativeads/o;Lcom/mopub/nativeads/PositioningSource;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Lcom/mopub/nativeads/o;

    .line 115
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Lcom/mopub/nativeads/PositioningSource;

    .line 116
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    .line 117
    invoke-static {}, Lcom/mopub/nativeads/ac;->a()Lcom/mopub/nativeads/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Ljava/lang/Runnable;

    .line 132
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    .line 133
    iput v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    .line 134
    return-void
.end method

.method private a(ILcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/s;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 625
    new-instance v0, Lcom/mopub/nativeads/s;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-direct {v0, v1, v2, p2}, Lcom/mopub/nativeads/s;-><init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeResponse;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Lcom/mopub/nativeads/o;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 631
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->clear(Landroid/view/View;)V

    .line 634
    :cond_0
    return-void
.end method

.method private a(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->isOverridingImpressionTracker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Lcom/mopub/nativeads/o;

    invoke-virtual {v0, p2, p1}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 641
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeResponse;->prepare(Landroid/view/View;)V

    .line 642
    return-void
.end method

.method private a(Lcom/mopub/nativeads/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 251
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    .line 252
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    .line 254
    return-void
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->b()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 614
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(ILcom/mopub/nativeads/NativeResponse;)Lcom/mopub/nativeads/s;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v1, p1, v0}, Lcom/mopub/nativeads/ac;->a(ILcom/mopub/nativeads/s;)V

    .line 616
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    .line 618
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 621
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 587
    .line 588
    add-int/lit8 v0, p2, -0x1

    .line 589
    :goto_0
    if-gt p1, v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 590
    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    if-lt p1, v1, :cond_1

    .line 601
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/ac;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 594
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 595
    const/4 v0, 0x0

    goto :goto_1

    .line 597
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 599
    :cond_3
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/ac;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    return v0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    if-eqz v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    .line 564
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(II)Z

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lcom/mopub/nativeads/ac;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/ac;)V

    .line 243
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    goto :goto_0
.end method

.method a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, Lcom/mopub/nativeads/ac;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/ac;

    move-result-object v0

    .line 223
    iget-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/ac;)V

    .line 228
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    .line 229
    return-void

    .line 226
    :cond_0
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lcom/mopub/nativeads/ac;

    goto :goto_0
.end method

.method public clearAds()V
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 307
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->a()V

    .line 308
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->a()V

    .line 322
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Lcom/mopub/nativeads/o;

    invoke-virtual {v0}, Lcom/mopub/nativeads/o;->b()V

    .line 323
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ac;->c()V

    .line 324
    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->d(I)Lcom/mopub/nativeads/s;

    move-result-object v0

    return-object v0
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    const/4 p2, 0x0

    .line 367
    :cond_0
    :goto_0
    return-object p2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->d(I)Lcom/mopub/nativeads/s;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/mopub/nativeads/s;->a()Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v1

    .line 358
    if-eqz p2, :cond_2

    .line 361
    :goto_1
    invoke-virtual {v0}, Lcom/mopub/nativeads/s;->b()Lcom/mopub/nativeads/NativeResponse;

    move-result-object v0

    .line 362
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Landroid/view/View;)V

    .line 364
    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/NativeResponse;Landroid/view/View;)V

    .line 365
    invoke-interface {v1, p2, v0}, Lcom/mopub/nativeads/MoPubAdRenderer;->renderAdView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/content/Context;

    invoke-interface {v1, v2, p3}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method

.method public getAdViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdViewTypeCount()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public getAdjustedCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->h(I)I

    move-result v0

    return v0
.end method

.method public getAdjustedPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->f(I)I

    move-result v0

    return v0
.end method

.method public getOriginalCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->g(I)I

    move-result v0

    return v0
.end method

.method public getOriginalPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->e(I)I

    move-result v0

    return v0
.end method

.method public insertItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->i(I)V

    .line 519
    return-void
.end method

.method public isAd(I)Z
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->c(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 175
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:Ljava/lang/String;

    .line 195
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    .line 196
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    .line 197
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    .line 210
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/u;->a(Lcom/mopub/nativeads/v;)V

    .line 217
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/u;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mopub/nativeads/u;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 218
    return-void
.end method

.method public moveItem(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 553
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/ac;->b(II)V

    .line 554
    return-void
.end method

.method public placeAdsInRange(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    .line 278
    add-int/lit8 v0, p1, 0x64

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    .line 279
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    .line 280
    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 147
    return-void
.end method

.method public removeAdsInRange(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ac;->b()[I

    move-result-object v1

    .line 382
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->f(I)I

    move-result v2

    .line 383
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/ac;->f(I)I

    move-result v3

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 389
    aget v5, v1, v0

    .line 390
    if-lt v5, v2, :cond_0

    if-lt v5, v3, :cond_1

    .line 388
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget v6, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    if-ge v5, v6, :cond_2

    .line 399
    iget v5, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    .line 401
    :cond_2
    iget v5, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    goto :goto_1

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativeads/ac;->a(II)I

    move-result v1

    .line 405
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 406
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v3, v0}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_2

    .line 408
    :cond_4
    return v1
.end method

.method public removeItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->j(I)V

    .line 540
    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 163
    return-void
.end method

.method public setItemCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lcom/mopub/nativeads/ac;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ac;->h(I)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    .line 497
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    .line 498
    return-void
.end method
