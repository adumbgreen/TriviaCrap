.class public Lcom/etermax/mopubads/custom/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/smartadserver/android/library/SASInterstitialView;

.field protected f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->g:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c;->d:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/etermax/mopubads/custom/a/c;->a:I

    .line 36
    iput-object p3, p0, Lcom/etermax/mopubads/custom/a/c;->b:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/etermax/mopubads/custom/a/c;->c:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/a/c;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/etermax/mopubads/custom/a/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/smartadserver/android/library/ui/e;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/ui/e;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    const-string v0, "mopub ads"

    const-string v1, "Smartads stopped"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "mopub ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartAdsInterstitialContainer - destroy - adWasOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/SASInterstitialView;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/etermax/mopubads/custom/a/c;->b()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->b()V

    .line 49
    iput-object v3, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    .line 51
    :cond_1
    iput-object v3, p0, Lcom/etermax/mopubads/custom/a/c;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 52
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-direct {v0, p1}, Lcom/smartadserver/android/library/SASInterstitialView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    .line 77
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/etermax/mopubads/custom/a/c;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->setLoaderView(Landroid/view/View;)V

    .line 78
    const/16 v0, 0x2ee0

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->setDefaultAdLoadingTimeout(I)V

    .line 79
    return-void
.end method

.method public a(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 7
    .parameter

    .prologue
    .line 68
    const-string v0, "mopub ads"

    const-string v1, "Smartads started"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 70
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    iget v1, p0, Lcom/etermax/mopubads/custom/a/c;->a:I

    iget-object v2, p0, Lcom/etermax/mopubads/custom/a/c;->b:Ljava/lang/String;

    iget v3, p0, Lcom/etermax/mopubads/custom/a/c;->c:I

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {p0, p1}, Lcom/etermax/mopubads/custom/a/c;->b(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/smartadserver/android/library/SASInterstitialView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/a;)V

    .line 72
    return-void
.end method

.method protected b(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v1, Lcom/etermax/mopubads/custom/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/mopubads/custom/a/c$1;-><init>(Lcom/etermax/mopubads/custom/a/c;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/ui/c;)V

    .line 106
    new-instance v0, Lcom/etermax/mopubads/custom/a/c$2;

    invoke-direct {v0, p0}, Lcom/etermax/mopubads/custom/a/c$2;-><init>(Lcom/etermax/mopubads/custom/a/c;)V

    return-object v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 142
    :cond_0
    return-void
.end method
