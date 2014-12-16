.class public abstract Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/SlotListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected newSlotTargetingInstance(Lcom/google/ads/mediation/MediationAdRequest;)Lcom/lifestreet/android/lsmsdk/SlotTargeting;
    .locals 4
    .parameter

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/lifestreet/android/lsmsdk/SlotTargeting;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    sget-object v2, Lcom/etermax/admob/lifestreet/BaseLifeStreetContainer$1;->$SwitchMap$com$google$ads$AdRequest$Gender:[I

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setLatitude(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setLongitude(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_0
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setGender(Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;)V

    goto :goto_1

    .line 30
    :pswitch_1
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->MALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setGender(Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;)V

    goto :goto_1

    .line 33
    :pswitch_2
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;->FEMALE:Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setGender(Lcom/lifestreet/android/lsmsdk/SlotTargeting$Gender;)V

    goto :goto_1

    .line 43
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/SlotTargeting;->setAllowAutoLocation(Z)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public onClickInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public onClose(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public onDestroyCustomEventBannerAdapter(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public onDestroyCustomEventInterstitialAdapter(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public onDismissInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public onDismissScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public onFailedToLoadSlotView(Lcom/lifestreet/android/lsmsdk/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public onFailedToReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public onLeaveApplication(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public onLeaveApplicationInterstitial(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public onPresentInterstitialScreen(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public onPresentScreen(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public onReceiveAd(Lcom/lifestreet/android/lsmsdk/BannerAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public onReceiveInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method
