.class public Ltwitter4j/HttpResponseImpl;
.super Ltwitter4j/HttpResponse;
.source "SourceFile"


# instance fields
.field private con:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ltwitter4j/HttpResponse;-><init>()V

    .line 61
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->responseAsString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ltwitter4j/HttpResponse;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 33
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    .line 35
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 52
    :cond_0
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ltwitter4j/StreamingGZIPInputStream;

    iget-object v1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ltwitter4j/StreamingGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 56
    :cond_1
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "Received authentication challenge is null"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I

    goto :goto_0

    .line 46
    :cond_2
    throw v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    return-void
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
