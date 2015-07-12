.class public Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskNetworkException;
.super Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 19
    return-void
.end method
