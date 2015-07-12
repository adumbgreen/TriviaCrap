.class public Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;
.super Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->LOAD_SLOT_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    invoke-direct {p0, v0, p1, p2}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 19
    return-void
.end method
