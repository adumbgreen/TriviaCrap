.class public Lcom/facebook/ads/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static viewMapping:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

.field private adListener:Lcom/facebook/ads/AdListener;

.field private adLoaded:Z

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private adView:Landroid/view/View;

.field private clickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private eventHandler:Lcom/facebook/ads/NativeAd$EventHandler;

.field private handler:Lcom/facebook/ads/internal/NativeAdHandler;

.field private impListener:Lcom/facebook/ads/ImpressionListener;

.field private volatile loadRequested:Z

.field private viewabilityThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    .line 196
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    sget-object v3, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    new-instance v6, Lcom/facebook/ads/NativeAd$1;

    invoke-direct {v6, p0}, Lcom/facebook/ads/NativeAd$1;-><init>(Lcom/facebook/ads/NativeAd;)V

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/NativeAdDataModel;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    return-object p1
.end method

.method static synthetic access$202(Lcom/facebook/ads/NativeAd;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/facebook/ads/NativeAd;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/facebook/ads/NativeAd;->viewabilityThreshold:I

    return p1
.end method

.method static synthetic access$500(Lcom/facebook/ads/NativeAd;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->isViewOnScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/ImpressionListener;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->impListener:Lcom/facebook/ads/ImpressionListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    return-object v0
.end method

.method private addListener(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->eventHandler:Lcom/facebook/ads/NativeAd$EventHandler;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->eventHandler:Lcom/facebook/ads/NativeAd$EventHandler;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 477
    return-void
.end method

.method private collectAllSubviews(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 404
    check-cast p2, Landroid/view/ViewGroup;

    .line 405
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 406
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/NativeAd;->collectAllSubviews(Ljava/util/List;Landroid/view/View;)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method

.method private detachListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 500
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->clickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    return-void
.end method

.method public static downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 386
    new-instance v0, Lcom/facebook/ads/internal/DownloadImageTask;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/DownloadImageTask;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    return-void
.end method

.method private ensureAdRequestController()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No request controller available, has the NativeAd been destroyed?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    .line 244
    throw v0

    .line 246
    :cond_0
    return-void
.end method

.method private isValidAlpha()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 507
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 508
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const v2, 0x3f666666

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewOnScreen()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->isValidAlpha()Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 520
    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v2

    int-to-double v1, v1

    .line 525
    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    .line 527
    iget v5, p0, Lcom/facebook/ads/NativeAd;->viewabilityThreshold:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    .line 280
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->detachListeners()V

    .line 283
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->cancelImpressionRetry()V

    .line 285
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    .line 291
    :cond_2
    return-void
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getSocialContext()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdDataModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    return v0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->loadRequested:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ad already loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    .line 269
    throw v0

    .line 271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->loadRequested:Z

    .line 272
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->ensureAdRequestController()V

    .line 273
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    .line 274
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/NativeAd;->collectAllSubviews(Ljava/util/List;Landroid/view/View;)V

    .line 398
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    .line 399
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    .line 422
    throw v0

    .line 425
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid set of clickable views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    .line 428
    throw v0

    .line 431
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->adLoaded:Z

    if-nez v0, :cond_3

    .line 432
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Ad not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 437
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 441
    :cond_4
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    sget-object v0, Lcom/facebook/ads/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 446
    :cond_5
    new-instance v0, Lcom/facebook/ads/NativeAd$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAd$EventHandler;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->eventHandler:Lcom/facebook/ads/NativeAd$EventHandler;

    .line 447
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    .line 448
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 449
    invoke-direct {p0, v0}, Lcom/facebook/ads/NativeAd;->addListener(Landroid/view/View;)V

    goto :goto_1

    .line 452
    :cond_6
    new-instance v0, Lcom/facebook/ads/internal/NativeAdHandler;

    new-instance v1, Lcom/facebook/ads/NativeAd$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/NativeAd$2;-><init>(Lcom/facebook/ads/NativeAd;)V

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->adDataModel:Lcom/facebook/ads/internal/NativeAdDataModel;

    iget-object v5, p0, Lcom/facebook/ads/NativeAd;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/NativeAdHandler;-><init>(Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLcom/facebook/ads/internal/NativeAdDataModel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    .line 468
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->trySendImpression()V

    .line 470
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->adListener:Lcom/facebook/ads/AdListener;

    .line 254
    return-void
.end method

.method public setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->impListener:Lcom/facebook/ads/ImpressionListener;

    .line 262
    return-void
.end method

.method public unregisterView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 485
    :cond_0
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View not registered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    .line 488
    throw v0

    .line 491
    :cond_2
    sget-object v0, Lcom/facebook/ads/NativeAd;->viewMapping:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->detachListeners()V

    .line 493
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/NativeAdHandler;->cancelImpressionRetry()V

    .line 494
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->handler:Lcom/facebook/ads/internal/NativeAdHandler;

    .line 495
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->adView:Landroid/view/View;

    goto :goto_0
.end method
