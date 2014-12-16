.class public final Lcom/lifestreet/android/lsmsdk/ads/AdWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private mActivityStarted:Z

.field private mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

.field private mLateCloseInterstitial:Z

.field private mRedirectInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lifestreet/android/lsmsdk/ads/AdView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mActivityStarted:Z

    .line 104
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z

    .line 105
    iput-boolean v2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z

    .line 46
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 48
    invoke-virtual {p0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setBackgroundColor(I)V

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$AdViewClient;-><init>(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Lcom/lifestreet/android/lsmsdk/ads/AdWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setVerticalScrollBarEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 70
    new-instance v0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$1;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView$1;-><init>(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Lcom/lifestreet/android/lsmsdk/ads/AdView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mRedirectInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mLateCloseInterstitial:Z

    return p1
.end method

.method static synthetic access$402(Lcom/lifestreet/android/lsmsdk/ads/AdWebView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mActivityStarted:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    .line 85
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 86
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 94
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mActivityStarted:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mActivityStarted:Z

    .line 97
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ads/AdView;->getListener()Lcom/lifestreet/android/lsmsdk/ads/AdListener;

    move-result-object v0

    .line 98
    :goto_0
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/ads/AdWebView;->mAdView:Lcom/lifestreet/android/lsmsdk/ads/AdView;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/ads/AdListener;->onDismissScreen(Lcom/lifestreet/android/lsmsdk/ads/AdView;)V

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
