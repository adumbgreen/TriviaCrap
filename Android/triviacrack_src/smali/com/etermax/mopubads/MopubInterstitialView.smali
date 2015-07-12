.class public Lcom/etermax/mopubads/MopubInterstitialView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/b;
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# instance fields
.field private a:Lcom/mopub/mobileads/MoPubInterstitial;

.field private b:Lcom/etermax/adsinterface/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/etermax/adsinterface/c;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v0, p1, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/etermax/mopubads/MopubInterstitialView;->b:Lcom/etermax/adsinterface/c;

    .line 38
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 40
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 41
    return-void
.end method

.method public a(Lcom/etermax/adsinterface/d;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/etermax/adsinterface/f;->a(Lcom/etermax/adsinterface/d;)V

    .line 49
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {p1}, Lcom/etermax/adsinterface/d;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->a:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 89
    :cond_0
    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->b:Lcom/etermax/adsinterface/c;

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->d()V

    .line 77
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->b:Lcom/etermax/adsinterface/c;

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->c()V

    .line 82
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    const-string v0, "MOPUB-INTERSTITIAL"

    const-string v1, "onInterstitialFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->b:Lcom/etermax/adsinterface/c;

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->a()V

    .line 68
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    const-string v0, "MOPUB-INTERSTITIAL"

    const-string v1, "onInterstitialLoaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/mopubads/MopubInterstitialView;->b:Lcom/etermax/adsinterface/c;

    invoke-interface {v0}, Lcom/etermax/adsinterface/c;->b()V

    .line 62
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method
