.class public Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/e;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/etermax/adsinterface/a/f;

.field private c:Lcom/etermax/adsinterface/a/a;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/webkit/WebView;

.field private f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private g:Lcom/etermax/adsinterface/a/d;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->e:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/a;)Lcom/etermax/adsinterface/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c:Lcom/etermax/adsinterface/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;Lcom/etermax/adsinterface/a/f;)Lcom/etermax/adsinterface/a/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b:Lcom/etermax/adsinterface/a/f;

    return-object p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c:Lcom/etermax/adsinterface/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)Lcom/etermax/adsinterface/a/f;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b:Lcom/etermax/adsinterface/a/f;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const-string v0, "mopub ads"

    const-string v1, "Requesting Custom interstitial Ad"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->h:Landroid/os/Handler;

    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 41
    const-string v0, "mopub ads"

    const-string v1, "Custom ads can only be called from a FragmentActivity!"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a:Landroid/app/Activity;

    new-instance v1, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$1;-><init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V

    invoke-static {v0, p3, v1}, Lcom/etermax/adsinterface/a/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    goto :goto_0
.end method

.method public notifyFailure()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->h:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$3;-><init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public notifySuccess()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->h:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial$2;-><init>(Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public onAdCanceled()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "mopub ads"

    const-string v1, "CustomAdsEventInterstitial - onAdCanceled"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 144
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "mopub ads"

    const-string v1, "CustomAdsEventInterstitial - onAdClicked"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 136
    :cond_0
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b:Lcom/etermax/adsinterface/a/f;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b:Lcom/etermax/adsinterface/a/f;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/f;->a()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->b:Lcom/etermax/adsinterface/a/f;

    .line 170
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->f:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/etermax/adsinterface/a/d;-><init>(Landroid/content/Context;Lcom/etermax/adsinterface/a/e;)V

    iput-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c:Lcom/etermax/adsinterface/a/a;

    iget-object v2, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/graphics/Bitmap;)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c:Lcom/etermax/adsinterface/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/a;->a(J)V

    .line 123
    invoke-virtual {p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->notifySuccess()V

    .line 127
    :goto_2
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    invoke-virtual {v0}, Lcom/etermax/adsinterface/a/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {p0}, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->notifyFailure()V

    goto :goto_2

    .line 118
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->g:Lcom/etermax/adsinterface/a/d;

    iget-object v1, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->c:Lcom/etermax/adsinterface/a/a;

    iget-object v2, p0, Lcom/mopub/mobileads/EtermaxAdsCustomEventInterstitial;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/a;Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
