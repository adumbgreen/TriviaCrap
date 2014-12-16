.class public Lcom/mopub/common/DownloadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Ljava/lang/Void;",
        "Lcom/mopub/common/DownloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/common/DownloadTask$DownloadTaskListener;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DownloadTaskListener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/mopub/common/DownloadTask;->a:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/mopub/common/DownloadResponse;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    if-nez v0, :cond_2

    .line 28
    :cond_0
    const-string v0, "Download task tried to execute null or empty url"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 46
    :cond_1
    :goto_0
    return-object v0

    .line 32
    :cond_2
    aget-object v0, p1, v2

    .line 33
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/DownloadTask;->b:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/mopub/common/HttpClient;->getHttpClient()Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 38
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 39
    new-instance v0, Lcom/mopub/common/DownloadResponse;

    invoke-direct {v0, v3}, Lcom/mopub/common/DownloadResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 41
    :goto_1
    :try_start_2
    const-string v3, "Download task threw an internal exception"

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/common/DownloadTask;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    if-eqz v2, :cond_3

    .line 46
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 46
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_4
    throw v0

    .line 45
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 40
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected a(Lcom/mopub/common/DownloadResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mopub/common/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/mopub/common/DownloadTask;->onCancelled()V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/DownloadTask;->a:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    iget-object v1, p0, Lcom/mopub/common/DownloadTask;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mopub/common/DownloadTask$DownloadTaskListener;->onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 9
    check-cast p1, [Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0, p1}, Lcom/mopub/common/DownloadTask;->a([Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/mopub/common/DownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mopub/common/DownloadTask;->a:Lcom/mopub/common/DownloadTask$DownloadTaskListener;

    iget-object v1, p0, Lcom/mopub/common/DownloadTask;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/DownloadTask$DownloadTaskListener;->onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V

    .line 64
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    check-cast p1, Lcom/mopub/common/DownloadResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/common/DownloadTask;->a(Lcom/mopub/common/DownloadResponse;)V

    return-void
.end method
