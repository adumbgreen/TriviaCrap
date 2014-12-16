.class public Lcom/mopub/mobileads/InMobiInterstitial;
.super Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# static fields
.field private static c:Z


# instance fields
.field private a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private b:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/InMobiInterstitial;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/mopubads/custom/BaseCustomEventInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p2, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 28
    :try_start_0
    const-string v0, "key"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    const/4 v0, 0x0

    .line 30
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 31
    check-cast p1, Landroid/app/Activity;

    .line 37
    :goto_0
    if-nez p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 61
    :goto_1
    return-void

    .line 45
    :cond_0
    sget-boolean v0, Lcom/mopub/mobileads/InMobiInterstitial;->c:Z

    if-nez v0, :cond_1

    .line 46
    invoke-static {p1, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/mobileads/InMobiInterstitial;->c:Z

    .line 49
    :cond_1
    new-instance v0, Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v1, "tp"

    const-string v2, "c_mopub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "tp-ver"

    const-string v2, "3.2.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMInterstitial;->setRequestParams(Ljava/util/Map;)V

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0, p0}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v0, "InMobiAdapter"

    const-string v1, "interstitial ad failed to load."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 89
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    if-ne p2, v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 109
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 114
    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->destroy()V

    .line 84
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 124
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitial;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 76
    :cond_0
    return-void
.end method
