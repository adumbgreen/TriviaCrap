.class public final Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;
.super Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/BannerAdapter;


# annotations
.annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;
    name = "Lifestreet2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;",
        "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lifestreet/android/lsmsdk/BannerAdapter",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

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
    .line 103
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBannerAd: "

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

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->slotTagIsNotValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    const-string v1, "Invalid slot tag"

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 42
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 43
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    .line 45
    const/4 v0, 0x0

    iget-object v1, p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTask;->execute(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public bridge synthetic getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p3, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;)V

    return-void
.end method

.method public onAsyncHttpTaskCompleted(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)V
    .locals 6
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onAsyncHttpTaskCompleted"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->isInvalidContentType(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
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

    invoke-virtual {p0, v0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->isMraid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/adapters/MRAIDAdapter;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    iget-object v4, v4, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->slotTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    iget-object v5, v5, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;->showCloseButton:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->createLSMParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapter;->getBannerAd(Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/adapters/LSMAdapter;-><init>()V

    goto :goto_1
.end method

.method public onAsyncHttpTaskFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
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

    .line 97
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    .line 51
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 52
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mParameters:Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    .line 54
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/BannerAdapter;->onDestroy()V

    .line 56
    iput-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;->onDestroy()V

    .line 60
    return-void
.end method

.method public onNotResponding()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onNotResponding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mAdapter:Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/BannerAdapter;->onNotResponding()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Adapter;->mListener:Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/BannerAdapterListener;->onFailedToReceiveAd(Landroid/view/View;)V

    goto :goto_0
.end method
