.class Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;->mUrl:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;->mUserAgent:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;

    const/16 v0, 0x1388

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;-><init>(I)V

    .line 115
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;->mUserAgent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 118
    const-string v2, "User-Agent"

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/commons/Utils$HttpGetUrlTask;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 129
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/commons/CustomHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method
