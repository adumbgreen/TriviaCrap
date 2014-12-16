.class final Lorg/b/c/a/r;
.super Lorg/b/c/a/d;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:Lorg/b/c/c;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/b/c/a/d;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    .line 50
    return-void
.end method

.method private a(Ljava/io/IOException;)I
    .locals 2
    .parameter

    .prologue
    .line 69
    const-string v0, "Received authentication challenge is null"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No authentication challenges found"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    sget-object v0, Lorg/b/c/i;->y:Lorg/b/c/i;

    invoke-virtual {v0}, Lorg/b/c/i;->a()I

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lorg/b/c/i;->E:Lorg/b/c/i;

    invoke-virtual {v0}, Lorg/b/c/i;->a()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_2
    throw p1
.end method


# virtual methods
.method public a()Lorg/b/c/i;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/b/c/a/r;->b()I

    move-result v0

    invoke-static {v0}, Lorg/b/c/i;->a(I)Lorg/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-direct {p0, v0}, Lorg/b/c/a/r;->a(Ljava/io/IOException;)I

    move-result v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-direct {p0, v0}, Lorg/b/c/a/r;->a(Ljava/io/IOException;)I

    move-result v0

    invoke-static {v0}, Lorg/b/c/i;->a(I)Lorg/b/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/i;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lorg/b/c/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lorg/b/c/a/r;->b:Lorg/b/c/c;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lorg/b/c/c;

    invoke-direct {v0}, Lorg/b/c/c;-><init>()V

    iput-object v0, p0, Lorg/b/c/a/r;->b:Lorg/b/c/c;

    .line 95
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/b/c/a/r;->b:Lorg/b/c/c;

    iget-object v2, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/b/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
    :goto_0
    iget-object v1, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    :cond_1
    iget-object v0, p0, Lorg/b/c/a/r;->b:Lorg/b/c/c;

    return-object v0

    .line 105
    :cond_2
    iget-object v2, p0, Lorg/b/c/a/r;->b:Lorg/b/c/c;

    iget-object v3, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/b/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected g()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/b/c/a/r;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    return-void
.end method
