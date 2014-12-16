.class public Lcom/mdotm/android/view/MdotMAdView;
.super Lcom/mdotm/android/view/MdotMView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/mdotm/android/view/MdotMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMAdView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMAdView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMAdView;->c:Z

    .line 124
    return-void
.end method

.method public a(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMAdView;->a()V

    .line 58
    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMAdView;->c:Z

    .line 59
    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/a;->b(Z)V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;->b(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V

    .line 73
    return-void
.end method

.method public bridge synthetic a(Lcom/mdotm/android/d/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->a(Lcom/mdotm/android/d/b;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/mdotm/android/vast/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->a(Lcom/mdotm/android/vast/e;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Lcom/mdotm/android/d/b;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->b(Lcom/mdotm/android/d/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/mdotm/android/view/MdotMView;->b(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->d()V

    return-void
.end method

.method public bridge synthetic didShowInterstitial()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->didShowInterstitial()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->f()V

    return-void
.end method

.method public bridge synthetic onBannerAdClick()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onBannerAdClick()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onDetachedFromWindow()V

    .line 41
    const-string v0, "Ondetached from window **"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMAdView;->a()V

    .line 43
    return-void
.end method

.method public bridge synthetic onDismissScreen()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onDismissScreen()V

    return-void
.end method

.method public bridge synthetic onFailedToReceiveBannerAd()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onFailedToReceiveBannerAd()V

    return-void
.end method

.method public bridge synthetic onFailedToReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onFailedToReceiveInterstitialAd()V

    return-void
.end method

.method public bridge synthetic onInterstitialAdClick()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onInterstitialAdClick()V

    return-void
.end method

.method public bridge synthetic onInterstitialDismiss()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onInterstitialDismiss()V

    return-void
.end method

.method public bridge synthetic onLeaveApplicationFromBanner()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onLeaveApplicationFromBanner()V

    return-void
.end method

.method public bridge synthetic onLeaveApplicationFromInterstitial()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onLeaveApplicationFromInterstitial()V

    return-void
.end method

.method public bridge synthetic onReceiveBannerAd()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onReceiveBannerAd()V

    return-void
.end method

.method public bridge synthetic onReceiveInterstitialAd()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->onReceiveInterstitialAd()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/mdotm/android/view/MdotMView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic willShowInterstitial()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/mdotm/android/view/MdotMView;->willShowInterstitial()V

    return-void
.end method
