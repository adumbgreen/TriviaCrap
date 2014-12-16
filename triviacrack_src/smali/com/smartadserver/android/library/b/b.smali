.class Lcom/smartadserver/android/library/b/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Timer;

.field final synthetic b:Lcom/smartadserver/android/library/b/a;

.field private c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private d:Lcom/smartadserver/android/library/b/d;

.field private e:Lorg/apache/http/client/HttpClient;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/b/a;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/smartadserver/android/library/b/d;Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object p1, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/smartadserver/android/library/b/b;->f:Z

    .line 110
    iput-boolean v0, p0, Lcom/smartadserver/android/library/b/b;->g:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    .line 115
    const-string v0, "SASHttpRequestThread"

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/b/b;->setName(Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 117
    iput-object p3, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    .line 118
    iput-object p4, p0, Lcom/smartadserver/android/library/b/b;->e:Lorg/apache/http/client/HttpClient;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/b/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/smartadserver/android/library/b/b;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/b/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/smartadserver/android/library/b/b;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/b/b;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/b/b;)Lcom/smartadserver/android/library/b/d;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    :try_start_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 127
    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v3, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 130
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->e:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_3

    .line 131
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 134
    move-object v0, v2

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v1, v0

    new-instance v4, Lcom/smartadserver/android/library/b/b$1;

    invoke-direct {v4, p0}, Lcom/smartadserver/android/library/b/b$1;-><init>(Lcom/smartadserver/android/library/b/b;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 149
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-interface {v1, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v1

    invoke-static {v3, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 152
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v1

    invoke-static {v3, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/b/a;->b(Lcom/smartadserver/android/library/b/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    .line 163
    new-instance v1, Lcom/smartadserver/android/library/b/b$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/b/b$2;-><init>(Lcom/smartadserver/android/library/b/b;)V

    .line 184
    iget-object v3, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    iget-object v4, p0, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 191
    instance-of v1, v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_1

    .line 192
    move-object v0, v2

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v1, v0

    invoke-static {v3, v1}, Lcom/smartadserver/android/library/b/a;->a(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 197
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    iget-boolean v4, p0, Lcom/smartadserver/android/library/b/b;->f:Z

    if-eqz v4, :cond_4

    .line 199
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    :cond_2
    :goto_1
    return-void

    .line 154
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/smartadserver/android/library/b/b;->e:Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 201
    :cond_4
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/smartadserver/android/library/b/b;->g:Z

    .line 202
    iget-object v4, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    if-eqz v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 205
    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    if-eqz v1, :cond_7

    .line 209
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 211
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_6

    .line 213
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v4, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    invoke-interface {v4, v1}, Lcom/smartadserver/android/library/b/d;->a(Ljava/lang/String;)V

    .line 216
    instance-of v1, v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_2

    .line 217
    check-cast v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v3, v2}, Lcom/smartadserver/android/library/b/a;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v1

    .line 229
    monitor-enter p0

    .line 231
    :try_start_5
    iget-boolean v2, p0, Lcom/smartadserver/android/library/b/b;->f:Z

    if-eqz v2, :cond_8

    .line 232
    monitor-exit p0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 205
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/smartadserver/android/library/b/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 225
    :cond_7
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    new-instance v2, Lorg/apache/http/HttpException;

    const-string v3, "Null Http response"

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/smartadserver/android/library/b/d;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 234
    :cond_8
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/smartadserver/android/library/b/b;->g:Z

    .line 235
    iget-object v2, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    if-eqz v2, :cond_9

    .line 236
    iget-object v2, p0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 239
    :cond_9
    iget-object v2, p0, Lcom/smartadserver/android/library/b/b;->d:Lcom/smartadserver/android/library/b/d;

    invoke-interface {v2, v1}, Lcom/smartadserver/android/library/b/d;->a(Ljava/lang/Exception;)V

    .line 240
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method
