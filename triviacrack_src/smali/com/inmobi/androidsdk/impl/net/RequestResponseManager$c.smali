.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/UserInfo;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

.field final synthetic d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field final synthetic e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->a:Lcom/inmobi/androidsdk/impl/UserInfo;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iput-object p5, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 209
    const/4 v0, 0x0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->a:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inmobi/androidsdk/impl/AdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 219
    :goto_0
    :try_start_1
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad Serving URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->a:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    invoke-static {v1, v0, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->buildPostBody(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/commons/thinICE/wifi/WifiInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v1, v0, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->a:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->a:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    .line 274
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "No wifi permissions set, unable to send wifi data"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/inmobi/androidsdk/impl/AdException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    .line 252
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v1, v5, v0, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1

    .line 238
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_2
    .catch Lcom/inmobi/androidsdk/impl/AdException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 257
    :catch_2
    move-exception v0

    .line 258
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "[InMobi]-[Network]-4.3.0"

    const-string v1, "Server Timeout"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_FETCH_TIMEOUT:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v0, v5, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v0, v5, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1

    .line 268
    :catch_3
    move-exception v0

    .line 269
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Exception retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->e:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->d:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-static {v0, v5, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1
.end method
