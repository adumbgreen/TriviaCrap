.class public abstract Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/Adapter;
.implements Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lifestreet/android/lsmsdk/Adapter",
        "<",
        "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;",
        ">;",
        "Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskListener;"
    }
.end annotation


# instance fields
.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method protected createLSMParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;

    invoke-direct {v0}, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;-><init>()V

    .line 41
    iput-object p1, v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->html:Ljava/lang/String;

    .line 42
    iput-object p2, v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->baseUrl:Ljava/lang/String;

    .line 43
    iput-object p3, v0, Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;->showCloseButton:Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public getParametersClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-class v0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;

    return-object v0
.end method

.method protected isInvalidContentType(Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/commons/AsyncHttpTaskResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    const-string v1, "html"

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMraid(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "mraid"

    invoke-static {p1, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;->mDestroyed:Z

    .line 32
    return-void
.end method

.method public shouldCancelAsyncHttpTask()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2AbstractAdapter;->mDestroyed:Z

    return v0
.end method

.method protected slotTagIsNotValid(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    const-string v0, "lfstmedia.com"

    invoke-static {p1, v0}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
