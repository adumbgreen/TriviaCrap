.class public Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field private mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private getErrorCode(Lcom/lifestreet/android/lsmsdk/AdType;)Lcom/lifestreet/android/lsmsdk/ErrorCode;
    .locals 1
    .parameter

    .prologue
    .line 42
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_NEXT_ADAPTER_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()Lcom/lifestreet/android/lsmsdk/ErrorCode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    return-object v0
.end method

.method public getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    return-object v0
.end method

.method public setErrorCode(Lcom/lifestreet/android/lsmsdk/AdType;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getErrorCode(Lcom/lifestreet/android/lsmsdk/AdType;)Lcom/lifestreet/android/lsmsdk/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 39
    return-void
.end method

.method public setErrorCode(Lcom/lifestreet/android/lsmsdk/ErrorCode;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 35
    return-void
.end method

.method public setSlotContext(Lcom/lifestreet/android/lsmsdk/SlotContext;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 27
    return-void
.end method
