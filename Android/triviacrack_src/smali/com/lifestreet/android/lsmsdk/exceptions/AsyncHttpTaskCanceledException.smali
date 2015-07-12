.class public final Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskCanceledException;
.super Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v1, "Http task has been cancelled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/AsyncHttpTaskException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 19
    return-void
.end method
