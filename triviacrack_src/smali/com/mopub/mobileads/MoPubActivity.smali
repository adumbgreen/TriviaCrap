.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/j;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/j;-><init>()V

    .line 107
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "Scrollable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "Ad-Configuration"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->b(Z)V

    .line 57
    new-instance v1, Lcom/mopub/mobileads/MoPubActivity$1;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MoPubActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Lcom/mopub/mobileads/u;)V

    .line 63
    new-instance v1, Lcom/mopub/mobileads/MoPubActivity$2;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MoPubActivity$2;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static/range {p0 .. p5}, Lcom/mopub/mobileads/MoPubActivity;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v0, "MoPubActivity"

    const-string v1, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 7

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string v1, "Scrollable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 82
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/y;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/y;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->d()Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/mopub/mobileads/j;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->a()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/k;

    invoke-virtual {v1}, Lcom/mopub/mobileads/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->a()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 104
    invoke-super {p0}, Lcom/mopub/mobileads/j;->onDestroy()V

    .line 105
    return-void
.end method
