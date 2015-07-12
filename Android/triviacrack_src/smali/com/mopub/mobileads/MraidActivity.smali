.class public Lcom/mopub/mobileads/MraidActivity;
.super Lcom/mopub/mobileads/j;
.source "SourceFile"


# instance fields
.field private a:Lcom/mopub/mobileads/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mopub/mobileads/j;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "Ad-Configuration"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mobileads/MraidView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    sget-object v1, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v2, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$PlacementType;->INTERSTITIAL:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/mopub/mobileads/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->b(Z)V

    .line 39
    new-instance v1, Lcom/mopub/mobileads/MraidActivity$1;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MraidActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setMraidListener(Lcom/mopub/mobileads/MraidView$MraidListener;)V

    .line 62
    new-instance v1, Lcom/mopub/mobileads/MraidActivity$2;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/MraidActivity$2;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MraidActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdConfiguration;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v0, "MraidInterstitial"

    const-string v1, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->d()Lcom/mopub/mobileads/AdConfiguration;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v2, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$PlacementType;->INTERSTITIAL:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/mopub/mobileads/factories/MraidViewFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidActivity$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidActivity$3;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setMraidListener(Lcom/mopub/mobileads/MraidView$MraidListener;)V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidActivity$4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidActivity$4;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setOnCloseButtonStateChange(Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v3, 0x100

    .line 133
    invoke-super {p0, p1}, Lcom/mopub/mobileads/j;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->a()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->e()V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->destroy()V

    .line 160
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->a()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 161
    invoke-super {p0}, Lcom/mopub/mobileads/j;->onDestroy()V

    .line 162
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/mopub/mobileads/j;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    invoke-static {v0}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;)V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/mopub/mobileads/j;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->a:Lcom/mopub/mobileads/MraidView;

    invoke-static {v0}, Lcom/mopub/mobileads/util/WebViews;->onResume(Landroid/webkit/WebView;)V

    .line 155
    return-void
.end method
