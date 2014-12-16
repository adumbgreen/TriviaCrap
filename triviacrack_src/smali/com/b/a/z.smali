.class public Lcom/b/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/o;


# instance fields
.field private final a:Lcom/squareup/okhttp/OkUrlFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/b/a/au;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/z;-><init>(Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    iput-object v0, p0, Lcom/b/a/z;->a:Lcom/squareup/okhttp/OkUrlFactory;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/b/a/au;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/b/a/z;-><init>(Ljava/io/File;J)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/b/a/z;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/b/a/z;->a:Lcom/squareup/okhttp/OkUrlFactory;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkUrlFactory;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Cache;

    invoke-direct {v1, p1, p2, p3}, Lcom/squareup/okhttp/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Lcom/b/a/p;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/b/a/z;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    const-string v0, "Cache-Control"

    const-string v2, "only-if-cached,max-age=2147483647"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 106
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    .line 107
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    new-instance v2, Lcom/b/a/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/b/a/q;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_1
    const-string v0, "OkHttp-Response-Source"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    const-string v0, "X-Android-Response-Source"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    const-string v2, "Content-Length"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 117
    invoke-static {v0}, Lcom/b/a/au;->a(Ljava/lang/String;)Z

    move-result v0

    .line 119
    new-instance v4, Lcom/b/a/p;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/b/a/p;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v4
.end method

.method protected a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/b/a/z;->a:Lcom/squareup/okhttp/OkUrlFactory;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 89
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    return-object v0
.end method
