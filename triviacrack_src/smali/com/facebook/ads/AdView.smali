.class public Lcom/facebook/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field private static final DEFAULT_ALPHA:I = 0xff

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final MIN_ALPHA:I = 0xe5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

.field private adListener:Lcom/facebook/ads/AdListener;

.field private adRequestController:Lcom/facebook/ads/internal/AdRequestController;

.field private final adSize:Lcom/facebook/ads/AdSize;

.field private adWebView:Landroid/webkit/WebView;

.field private currentAlpha:I

.field private impListener:Lcom/facebook/ads/ImpressionListener;

.field private final metrics:Landroid/util/DisplayMetrics;

.field private final placementId:Ljava/lang/String;

.field private final screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

.field private viewabilityThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/AdView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/16 v0, 0xff

    iput v0, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    .line 82
    iput-object v1, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    .line 84
    iput-object v1, p0, Lcom/facebook/ads/AdView;->impListener:Lcom/facebook/ads/ImpressionListener;

    .line 107
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-ne p3, v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/AdView;->placementId:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    .line 115
    new-instance v0, Lcom/facebook/ads/AdView$ScreenStateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/AdView$ScreenStateReceiver;-><init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->initializeView(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdHandler;

    iget-object v1, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/ads/AdView$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/AdView$1;-><init>(Lcom/facebook/ads/AdView;)V

    const-wide/16 v3, 0x3e8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/HtmlAdHandler;-><init>(Landroid/webkit/WebView;Lcom/facebook/ads/internal/AdHandler$ImpressionHelper;JLandroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    .line 140
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->registerScreenStateReceiver()V

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/ads/AdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->isAdViewVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/AdRequestController;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/ads/AdView;->impListener:Lcom/facebook/ads/ImpressionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/HtmlAdHandler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V

    return-void
.end method

.method static synthetic access$802(Lcom/facebook/ads/AdView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/facebook/ads/AdView;->viewabilityThreshold:I

    return p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/ads/AdView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/ads/AdView$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AdView$2;-><init>(Lcom/facebook/ads/AdView;)V

    return-object v0
.end method

.method private ensureAdRequestController()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No request controller available, has the AdView been destroyed?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method private initializeView(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    .line 145
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/ads/AdView$AdWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/AdView$AdWebViewClient;-><init>(Lcom/facebook/ads/AdView;Lcom/facebook/ads/AdView$1;)V

    new-instance v2, Lcom/facebook/ads/internal/AdWebViewInterface;

    invoke-direct {v2}, Lcom/facebook/ads/internal/AdWebViewInterface;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/AdWebViewUtils;->config(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Lcom/facebook/ads/internal/AdWebViewInterface;)V

    .line 147
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 148
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->resizeAdView()V

    .line 150
    new-instance v0, Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AdView;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    const/4 v4, 0x1

    sget-object v5, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    invoke-direct {p0}, Lcom/facebook/ads/AdView;->createAdRequestCallback()Lcom/facebook/ads/internal/AdRequest$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AdRequestController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;ZLcom/facebook/ads/internal/AdType;Lcom/facebook/ads/internal/AdRequest$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 152
    return-void
.end method

.method private isAdViewVisible()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4059

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    iget v2, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    const/16 v3, 0xe5

    if-lt v2, v3, :cond_0

    .line 322
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 323
    invoke-virtual {p0, v2}, Lcom/facebook/ads/AdView;->getLocationOnScreen([I)V

    .line 325
    aget v3, v2, v0

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    aget v4, v2, v0

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v4}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-lt v3, v4, :cond_0

    .line 331
    iget-object v3, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v3}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 332
    int-to-double v4, v3

    iget v6, p0, Lcom/facebook/ads/AdView;->viewabilityThreshold:I

    int-to-double v6, v6

    sub-double v6, v8, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    double-to-int v4, v4

    .line 334
    aget v5, v2, v1

    if-gez v5, :cond_2

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 339
    :cond_2
    aget v2, v2, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    .line 340
    if-gt v2, v4, :cond_0

    move v0, v1

    .line 345
    goto :goto_0
.end method

.method private registerScreenStateReceiver()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method private resizeAdView()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 361
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    :cond_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adSize:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/facebook/ads/AdView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0
.end method

.method private unregisterScreenStateReceiver()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView;->screenStateReceiver:Lcom/facebook/ads/AdView$ScreenStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    return-void
.end method

.method private updateView(Lcom/facebook/ads/internal/HtmlAdDataModel;)V
    .locals 6
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 256
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.facebook.com/"

    invoke-virtual {p1}, Lcom/facebook/ads/internal/HtmlAdDataModel;->getMarkup()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->destroy()V

    .line 266
    iput-object v3, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    .line 269
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->destroy()V

    .line 270
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->unregisterScreenStateReceiver()V

    .line 273
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AdView;->removeView(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 278
    iput-object v3, p0, Lcom/facebook/ads/AdView;->adWebView:Landroid/webkit/WebView;

    .line 280
    :cond_1
    return-void

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableAutoRefresh()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->disableRefresh()V

    .line 244
    return-void
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->ensureAdRequestController()V

    .line 233
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/AdRequestController;->loadAd()V

    .line 234
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    invoke-direct {p0}, Lcom/facebook/ads/AdView;->resizeAdView()V

    .line 376
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter

    .prologue
    .line 297
    iput p1, p0, Lcom/facebook/ads/AdView;->currentAlpha:I

    .line 298
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onSetAlpha(I)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 285
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adRequestController:Lcom/facebook/ads/internal/AdRequestController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/AdRequestController;->onWindowVisibilityChanged(I)V

    .line 288
    :cond_0
    if-nez p1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->scheduleImpressionRetry()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AdView;->adHandler:Lcom/facebook/ads/internal/HtmlAdHandler;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/HtmlAdHandler;->cancelImpressionRetry()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/facebook/ads/AdView;->adListener:Lcom/facebook/ads/AdListener;

    .line 208
    return-void
.end method

.method public setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/facebook/ads/AdView;->impListener:Lcom/facebook/ads/ImpressionListener;

    .line 216
    return-void
.end method
