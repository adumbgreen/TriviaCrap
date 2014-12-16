.class Lcom/mopub/nativeads/g;
.super Lcom/mopub/nativeads/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativeads/ah",
        "<",
        "Lcom/mopub/common/DownloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/mopub/common/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/mopub/nativeads/ai;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/ai",
            "<",
            "Lcom/mopub/common/DownloadResponse;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/ah;-><init>(Ljava/util/List;Lcom/mopub/nativeads/ai;)V

    .line 30
    iput p3, p0, Lcom/mopub/nativeads/g;->g:I

    .line 32
    new-instance v1, Lcom/mopub/nativeads/h;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mopub/nativeads/h;-><init>(Lcom/mopub/nativeads/g;Lcom/mopub/nativeads/g$1;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/nativeads/g;->f:Ljava/util/Map;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mopub/nativeads/g;->f:Ljava/util/Map;

    new-instance v4, Lcom/mopub/common/DownloadTask;

    invoke-direct {v4, v1}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/nativeads/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mopub/nativeads/g;->a:Lcom/mopub/nativeads/ai;

    iget-object v1, p0, Lcom/mopub/nativeads/g;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/ai;->onSuccess(Ljava/util/Map;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DownloadTask;

    .line 51
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "Failed to download image"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    iget-object v0, p0, Lcom/mopub/nativeads/g;->a:Lcom/mopub/nativeads/ai;

    invoke-interface {v0}, Lcom/mopub/nativeads/ai;->onFail()V

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v0, p0, Lcom/mopub/nativeads/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/mopub/nativeads/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DownloadTask;

    .line 63
    invoke-virtual {v0, v2}, Lcom/mopub/common/DownloadTask;->cancel(Z)Z

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/g;->a:Lcom/mopub/nativeads/ai;

    invoke-interface {v0}, Lcom/mopub/nativeads/ai;->onFail()V

    .line 67
    :cond_1
    return-void
.end method
