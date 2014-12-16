.class Lcom/mopub/nativeads/ak;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/nativeads/al;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/al;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mopub/nativeads/ak;->a:Lcom/mopub/nativeads/al;

    .line 37
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 79
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    .line 80
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 85
    :cond_1
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 85
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/mopub/nativeads/al;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/mopub/nativeads/ak;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/ak;-><init>(Lcom/mopub/nativeads/al;)V

    .line 27
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Failed to resolve url"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    invoke-interface {p1}, Lcom/mopub/nativeads/al;->onFailure()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 41
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 66
    :cond_1
    :goto_0
    return-object v0

    .line 47
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    move v3, v0

    move-object v0, v1

    move-object v1, v2

    .line 50
    :goto_1
    if-eqz v0, :cond_3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 53
    invoke-static {v0}, Lcom/mopub/common/util/IntentUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/ak;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 59
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 66
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0}, Lcom/mopub/nativeads/ak;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/ak;->onCancelled()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/ak;->a:Lcom/mopub/nativeads/al;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/al;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/ak;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 106
    iget-object v0, p0, Lcom/mopub/nativeads/ak;->a:Lcom/mopub/nativeads/al;

    invoke-interface {v0}, Lcom/mopub/nativeads/al;->onFailure()V

    .line 107
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/ak;->a(Ljava/lang/String;)V

    return-void
.end method
