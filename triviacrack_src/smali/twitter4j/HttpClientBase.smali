.class public abstract Ltwitter4j/HttpClientBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpClient;


# static fields
.field private static final logger:Ltwitter4j/Logger; = null

.field private static final serialVersionUID:J = -0x6f42041d5227216dL


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ltwitter4j/HttpClientBase;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientBase;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 4
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    .line 21
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-Version"

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client-URL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter4j.org/en/twitter4j-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "X-Twitter-Client"

    const-string v2, "Twitter4J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twitter4j http://twitter4j.org/ /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {p1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public addDefaultRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public delete(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method abstract handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
.end method

.method public head(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->HEAD:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected isProxyConfigured()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ltwitter4j/HttpClientBase;->handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/HttpClientBase;->handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v0

    .line 54
    if-eqz p2, :cond_0

    .line 55
    new-instance v1, Ltwitter4j/HttpResponseEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Ltwitter4j/HttpResponseEvent;-><init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {p2, v1}, Ltwitter4j/HttpResponseListener;->httpResponseReceived(Ltwitter4j/HttpResponseEvent;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    if-eqz p2, :cond_1

    .line 60
    new-instance v1, Ltwitter4j/HttpResponseEvent;

    invoke-direct {v1, p1, v3, v0}, Ltwitter4j/HttpResponseEvent;-><init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {p2, v1}, Ltwitter4j/HttpResponseListener;->httpResponseReceived(Ltwitter4j/HttpResponseEvent;)V

    .line 62
    :cond_1
    throw v0
.end method

.method public write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 36
    sget-object v0, Ltwitter4j/HttpClientBase;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0, p2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 37
    return-void
.end method
