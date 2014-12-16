.class public final Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/BannerAdapter;
.implements Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "Custom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;",
        ">;",
        "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

.field private mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "getBannerAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 30
    iget-object v0, p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;->function:Ljava/lang/String;

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;->data:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onReceiveCustomMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public bridge synthetic getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;)V

    return-void
.end method

.method public getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "getInterstitialAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 42
    iget-object v0, p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;->function:Ljava/lang/String;

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;->data:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onReceiveCustomMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public bridge synthetic getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;)V

    return-void
.end method

.method public getParametersClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventParameters;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onDestroyCustomEventAdapter(Ljava/lang/String;)V

    .line 60
    :cond_0
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 62
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onDestroyCustomEventAdapter(Ljava/lang/String;)V

    .line 66
    :cond_1
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 67
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mMethodName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onNotResponding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    invoke-interface {v0, v2}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/CustomEventAdapter;->mInterstitialListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-interface {v0, v2}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
