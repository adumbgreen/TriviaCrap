.class public final Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;
.super Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "Lifestreet2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;",
        "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapter",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

.field private mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

.field private mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;-><init>()V

    return-void
.end method

.method private isAdReady()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInterstitialAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 37
    iget-object v0, p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->slotTagIsNotValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    const-string v1, "Invalid slot tag"

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 42
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 43
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    .line 45
    const/4 v0, 0x0

    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->execute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public bridge synthetic getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;)V

    return-void
.end method

.method public onAsyncHttpTaskCompleted(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V
    .locals 6
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onAsyncHttpTaskCompleted"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->isInvalidContentType(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->isMraid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDInterstitialAdapter;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    iget-object v4, v4, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    iget-object v5, v5, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->createLSMParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/adapters/LSMInterstitialAdapter;-><init>()V

    goto :goto_1
.end method

.method public onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsyncHttpTaskFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    .line 60
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 61
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    .line 63
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->onDestroy()V

    .line 65
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;->onDestroy()V

    .line 69
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->onNotResponding()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mListener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;->onFailedToReceiveInterstitialAd(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "showInterstitial"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2InterstitialAdapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;->showInterstitial()V

    .line 55
    :cond_0
    return-void
.end method
