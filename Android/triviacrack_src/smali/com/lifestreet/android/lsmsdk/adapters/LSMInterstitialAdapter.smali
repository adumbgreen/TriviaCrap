.class public final Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;
.super Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "LSM"
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

    const-string v1, "getInterstitialAd"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 37
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 38
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    .line 40
    const-string v0, "nobid"

    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "com.lifestreet.action.RECEIVE_AD"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->invokeActionDelayed(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    goto :goto_0
.end method

.method public bridge synthetic getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;)V

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
    .line 51
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    return-object v0
.end method

.method protected invokeAction(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v0, "com.lifestreet.action.DISMISS_SCREEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;->invokeAction(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    :cond_0
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 95
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 96
    iput-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    .line 98
    :cond_1
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 115
    const-string v2, "com.lifestreet.category.ADS"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ads/AbstractAdActivity;->BROADCAST_ACTIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->invokeActionDelayed(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    :cond_0
    iput-object p0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "com.lifestreet.category.ADS"

    invoke-virtual {p0, v2, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->isShowInterstitialCloseButton()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v1, v1, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "true"

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v3, v3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const/4 v0, 0x1

    .line 76
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v1, v1, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotUrl()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_1
    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v3, v3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/lifestreet/android/lsmsdk/ads/InterstitialAdActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    :cond_2
    return-void

    .line 71
    :cond_3
    const-string v1, "false"

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v3, v3, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    iget-object v1, v1, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    goto :goto_1
.end method
