.class public Lcom/etermax/mopubads/MopubBannerView;
.super Lcom/etermax/adsinterface/AdBannerDefaultView;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# instance fields
.field private a:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/etermax/adsinterface/AdBannerDefaultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    .line 36
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 38
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/mopubads/MopubBannerView;->addView(Landroid/view/View;II)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    const-string v0, "MOPUB"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/MopubBannerView;->a(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/etermax/mopubads/MopubBannerView;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 32
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "MOPUB"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/mopubads/MopubBannerView;->a:Lcom/mopub/mobileads/MoPubView;

    .line 49
    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    const-string v0, "MOPUB"

    const-string v1, "onBannerFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/mopubads/MopubBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/etermax/mopubads/MopubBannerView;->a(Landroid/content/Context;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    const-string v0, "MOPUB"

    const-string v1, "onBannerLoaded"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/etermax/mopubads/MopubBannerView;->c()V

    .line 56
    return-void
.end method
