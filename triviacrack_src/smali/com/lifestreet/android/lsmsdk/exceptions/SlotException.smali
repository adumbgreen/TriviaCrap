.class public Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

.field private final mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 19
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/lifestreet/android/lsmsdk/ErrorCode;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->mErrorCode:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    return-object v0
.end method

.method public getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    return-object v0
.end method
