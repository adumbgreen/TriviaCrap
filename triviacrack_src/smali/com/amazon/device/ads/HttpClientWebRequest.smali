.class Lcom/amazon/device/ads/HttpClientWebRequest;
.super Lcom/amazon/device/ads/WebRequest;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/amazon/device/ads/HttpClientWebRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/HttpClientWebRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;-><init>()V

    .line 120
    return-void
.end method

.method private prepareFormRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported character encoding used while creating the request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "Unsupported character encoding used while creating the request"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private prepareRequestBody(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->charset:Ljava/lang/String;

    .line 147
    if-nez v0, :cond_0

    .line 149
    const-string v0, "UTF-8"

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->contentType:Ljava/lang/String;

    .line 152
    if-nez v1, :cond_1

    .line 154
    const-string v1, "text/plain"

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->requestBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 158
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareStringRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareFormRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareStringRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    iget-object v1, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->requestBody:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported character encoding used while creating the request. "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "Unsupported character encoding used while creating the request."

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected closeConnection()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 90
    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 222
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 227
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    return-object v0
.end method

.method protected createHttpRequest(Ljava/net/URL;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    const/4 v1, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpClientWebRequest;->createURI(Ljava/net/URL;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    sget-object v0, Lcom/amazon/device/ads/HttpClientWebRequest$1;->$SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod:[I

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$HttpMethod;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Problem with URI syntax: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "Problem with URI syntax"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 115
    :pswitch_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v2, v1

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .line 119
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareRequestBody(Lorg/apache/http/client/methods/HttpPost;)V

    move-object v2, v1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->logUrl(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->logRequestBodyEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request Body: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_2
    return-object v2

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpClientWebRequest;->createHttpRequest(Ljava/net/URL;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->closeConnection()V

    .line 59
    :cond_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->parseResponse(Lorg/apache/http/HttpResponse;)Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid client protocol: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "Invalid client protocol"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException during client execution: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "IOException during client execution"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getSubLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/amazon/device/ads/HttpClientWebRequest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected parseResponse(Lorg/apache/http/HttpResponse;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 6
    .parameter

    .prologue
    .line 239
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebResponse;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/WebRequest$WebResponse;-><init>(Lcom/amazon/device/ads/WebRequest;)V

    .line 240
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatusCode(I)V

    .line 241
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatus(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 245
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 250
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IOException while reading the input stream from response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v3, "IOException while reading the input stream from response"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
