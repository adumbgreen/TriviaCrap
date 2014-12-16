.class public final Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;
.super Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "MRAID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;",
        "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

.field private mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "getAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 37
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 38
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    .line 40
    const-string v0, "com.lifestreet.action.RECEIVE_AD"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->invokeActionDelayed(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 41
    return-void
.end method

.method public bridge synthetic getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V

    return-void
.end method

.method public getParametersClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    return-object v0
.end method

.method protected invokeAction(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;->invokeAction(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    :cond_0
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 80
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 81
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    .line 83
    :cond_1
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 100
    const-string v2, "com.lifestreet.category.MRAID"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->BROADCAST_ACTIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->invokeActionDelayed(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    :cond_0
    iput-object p0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.lifestreet.category.MRAID"

    invoke-virtual {p0, v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v0, v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotUrl()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v2, v2, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDInterstitialActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v0, v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method
