.class public Lcom/mopub/mobileads/HtmlInterstitialWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "SourceFile"


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->b:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/HtmlInterstitialWebView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method


# virtual methods
.method a(Lcom/mopub/mobileads/u;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;-><init>(Lcom/mopub/mobileads/HtmlInterstitialWebView;Lcom/mopub/mobileads/u;)V

    const-string v1, "mopubUriInterface"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public destroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->HONEYCOMB:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "mopubUriInterface"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->destroy()V

    .line 86
    return-void
.end method

.method public init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->init(Z)V

    .line 30
    new-instance v0, Lcom/mopub/mobileads/t;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/t;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 31
    new-instance v1, Lcom/mopub/mobileads/v;

    invoke-direct {v1, v0, p0, p4, p3}, Lcom/mopub/mobileads/v;-><init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    new-instance v0, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView$1;-><init>(Lcom/mopub/mobileads/HtmlInterstitialWebView;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Lcom/mopub/mobileads/u;)V

    .line 42
    return-void
.end method
