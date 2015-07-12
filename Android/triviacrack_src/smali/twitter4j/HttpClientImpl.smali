.class Ltwitter4j/HttpClientImpl;
.super Ltwitter4j/HttpClientBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpResponseCode;


# static fields
.field private static final instanceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ltwitter4j/Logger; = null

.field private static final serialVersionUID:J = -0x599855c36357ce6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Ltwitter4j/HttpClientImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    .line 40
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 57
    return-void
.end method

.method public static getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;
    .locals 2
    .parameter

    .prologue
    .line 62
    sget-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/HttpClient;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ltwitter4j/HttpClientImpl;

    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 65
    sget-object v1, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-object v0
.end method

.method private setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 202
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v1, "Request: "

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 204
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v1}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v2, "Authorization: "

    const-string v3, "."

    const-string v4, "*"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    const-string v1, "Authorization"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter

    .prologue
    .line 224
    invoke-virtual {p0}, Ltwitter4j/HttpClientImpl;->isProxyConfigured()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy AuthUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 228
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy AuthPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, "*"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 230
    :cond_0
    new-instance v0, Ltwitter4j/HttpClientImpl$1;

    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl$1;-><init>(Ltwitter4j/HttpClientImpl;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 244
    :cond_1
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 246
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v1}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening proxied connection("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 249
    :cond_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 253
    :goto_0
    iget-object v1, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v1

    if-lez v1, :cond_3

    .line 254
    iget-object v1, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    :cond_3
    iget-object v1, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v1

    if-lez v1, :cond_4

    .line 257
    iget-object v1, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 259
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 260
    return-object v0

    .line 251
    :cond_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method public handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .locals 18
    .parameter

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    move v7, v3

    :goto_0
    if-ge v7, v8, :cond_b

    .line 84
    const/4 v6, -0x1

    .line 87
    const/4 v4, 0x0

    .line 89
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ltwitter4j/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Ltwitter4j/HttpClientImpl;->setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v3

    sget-object v5, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-ne v3, v5, :cond_e

    .line 94
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/HttpParameter;->containsFile([Ltwitter4j/HttpParameter;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----Twitter4J-upload"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v5, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/form-data; boundary="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    .line 100
    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v12

    array-length v13, v12

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v13, :cond_3

    aget-object v14, v12, v5

    .line 102
    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\r\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\"; filename=\""

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\"\r\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Type: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\r\n\r\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 106
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->hasFileBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v3

    :goto_2
    invoke-direct {v15, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 111
    :goto_3
    invoke-virtual {v15, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 112
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v3, v0, v14}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 171
    :catchall_0
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    .line 172
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :goto_5
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 176
    :catch_0
    move-exception v2

    move v6, v4

    move-object v4, v5

    .line 178
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v3

    if-ne v7, v3, :cond_f

    .line 179
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3

    .line 106
    :cond_0
    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_2

    .line 114
    :cond_1
    const-string v3, "\r\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1

    .line 117
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\r\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\"\r\n"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 119
    const-string v3, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 120
    sget-object v3, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v14}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v14, "UTF-8"

    invoke-virtual {v3, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 122
    const-string v3, "\r\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_7

    .line 125
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "--\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 126
    const-string v3, "\r\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 140
    :goto_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 141
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v4

    .line 143
    :goto_9
    :try_start_5
    new-instance v4, Ltwitter4j/HttpResponseImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-direct {v4, v9, v3}, Ltwitter4j/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 144
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 145
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v3, "Response: "

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 148
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 150
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    if-eqz v2, :cond_6

    .line 152
    sget-object v12, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    .line 171
    :catchall_1
    move-exception v2

    move-object v3, v5

    move-object v5, v4

    move v4, v6

    goto/16 :goto_4

    .line 129
    :cond_5
    :try_start_7
    const-string v3, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v3

    .line 132
    sget-object v5, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v10, "Post Params: "

    invoke-virtual {v5, v10, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 134
    const-string v5, "Content-Length"

    array-length v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 137
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v4

    .line 138
    :try_start_8
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    .line 154
    :cond_6
    :try_start_9
    sget-object v12, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v12, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    .line 159
    :cond_7
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_8

    const/16 v2, 0x12e

    if-eq v6, v2, :cond_a

    const/16 v2, 0x12c

    if-gt v2, v6, :cond_a

    .line 160
    :cond_8
    const/16 v2, 0x1a4

    if-eq v6, v2, :cond_9

    const/16 v2, 0x190

    if-eq v6, v2, :cond_9

    const/16 v2, 0x1f4

    if-lt v6, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v2

    if-ne v7, v2, :cond_c

    .line 164
    :cond_9
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v4}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 172
    :cond_a
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_b
    move-object v2, v4

    .line 192
    :cond_b
    return-object v2

    .line 172
    :cond_c
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_c
    move-object v2, v4

    .line 183
    :goto_d
    :try_start_c
    sget-object v3, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v3}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 184
    invoke-virtual {v2}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    .line 186
    :cond_d
    sget-object v3, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v5}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds until the next retry."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4

    .line 83
    :goto_e
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_0

    .line 173
    :catch_1
    move-exception v2

    goto :goto_b

    :catch_2
    move-exception v2

    goto :goto_c

    :catch_3
    move-exception v3

    goto/16 :goto_5

    .line 188
    :catch_4
    move-exception v3

    goto :goto_e

    .line 176
    :catch_5
    move-exception v2

    goto/16 :goto_6

    .line 171
    :catchall_2
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    move v4, v6

    move-object/from16 v17, v5

    move-object v5, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto/16 :goto_4

    :cond_e
    move-object v5, v4

    goto/16 :goto_9

    :cond_f
    move-object v2, v4

    goto :goto_d
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method
