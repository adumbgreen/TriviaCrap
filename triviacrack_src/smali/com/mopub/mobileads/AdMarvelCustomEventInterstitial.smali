.class public Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;


# instance fields
.field private a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

.field private c:Lcom/admarvel/android/ads/AdMarvelActivity;

.field private d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

.field private e:Landroid/app/Activity;

.field private f:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

.field private g:Ljava/lang/String;

.field private h:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    .line 27
    iput-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    .line 28
    iput-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    iput-object p2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 41
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 42
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->e:Landroid/app/Activity;

    .line 47
    :cond_0
    const-string v0, "AdMarvel"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 71
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "adPartnerID"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    const-string v0, "adSiteID"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    const v3, 0x726d6d

    const v4, 0xff00

    move-object v1, p1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    .line 65
    invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->setListener(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->setEnableClickRedirect(Z)V

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    iget-object v5, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->e:Landroid/app/Activity;

    move-object v1, p1

    move-object v3, v6

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onAdMarvelVideoActivityLaunched(Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    const-string v0, "admarvel"

    const-string v1, "onAdmarvelVideoActivityLaunched"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 104
    :cond_0
    return-void
.end method

.method public onAdmarvelActivityLaunched(Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    const-string v0, "admarvel"

    const-string v1, "onAdmarvelActivityLaunched"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 113
    :cond_0
    return-void
.end method

.method public onClickInterstitialAd(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    const-string v0, "admarvel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 121
    :cond_0
    return-void
.end method

.method public onCloseInterstitialAd()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 128
    :cond_0
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial$1;->a:[I

    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 160
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onInvalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string v0, "admarvel"

    const-string v1, "onCloseInterstitialAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    .line 78
    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->c:Lcom/admarvel/android/ads/AdMarvelActivity;

    .line 83
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->h:Lcom/admarvel/android/ads/AdMarvelAd;

    .line 84
    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->f:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    .line 85
    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->g:Ljava/lang/String;

    .line 87
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V

    .line 81
    iput-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->d:Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    goto :goto_0
.end method

.method public onReceiveInterstitialAd(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->f:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    .line 170
    iput-object p2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->g:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->h:Lcom/admarvel/android/ads/AdMarvelAd;

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 174
    :cond_0
    return-void
.end method

.method public onRequestInterstitialAd()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method protected showInterstitial()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->b:Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    iget-object v1, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->f:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    iget-object v3, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdMarvelCustomEventInterstitial;->h:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->displayInterstitial(Landroid/app/Activity;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    .line 94
    :cond_0
    return-void
.end method
