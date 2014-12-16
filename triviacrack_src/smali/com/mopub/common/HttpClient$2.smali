.class final Lcom/mopub/common/HttpClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mopub/common/HttpClient$2;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/mopub/common/HttpClient$2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/common/HttpClient$2;->c:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/common/HttpClient$2;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/mopub/common/HttpClient$2;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/HttpClient;->initializeHttpGet(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    .line 89
    new-instance v3, Lcom/mopub/common/DownloadTask;

    iget-object v4, p0, Lcom/mopub/common/HttpClient$2;->c:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    invoke-direct {v3, v4}, Lcom/mopub/common/DownloadTask;-><init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hit tracking endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method
