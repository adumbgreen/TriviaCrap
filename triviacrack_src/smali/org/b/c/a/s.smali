.class final Lorg/b/c/a/s;
.super Lorg/b/c/a/b;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Boolean;


# instance fields
.field private final b:Ljava/net/HttpURLConnection;

.field private final c:I

.field private d:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/b/c/a/s;->a:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/b/c/a/b;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    .line 55
    iput p2, p0, Lorg/b/c/a/s;->c:I

    .line 58
    sget-object v0, Lorg/b/c/a/s;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    sget-object v0, Lorg/b/c/a/s;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lorg/b/c/c;)V
    .locals 5
    .parameter

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/b/c/c;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-direct {p0, v1, v0}, Lorg/b/c/a/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lorg/b/c/c;)Ljava/io/OutputStream;
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/b/c/a/s;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/b/c/c;->b()J

    move-result-wide v0

    long-to-int v0, v0

    .line 79
    if-ltz v0, :cond_1

    sget-object v1, Lorg/b/c/a/s;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 84
    :goto_0
    invoke-direct {p0, p1}, Lorg/b/c/a/s;->c(Lorg/b/c/c;)V

    .line 85
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/a/s;->d:Ljava/io/OutputStream;

    .line 88
    :cond_0
    new-instance v0, Lorg/b/c/a/t;

    iget-object v1, p0, Lorg/b/c/a/s;->d:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/b/c/a/t;-><init>(Ljava/io/OutputStream;Lorg/b/c/a/s$1;)V

    return-object v0

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    iget v1, p0, Lorg/b/c/a/s;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0
.end method

.method protected b(Lorg/b/c/c;)Lorg/b/c/a/i;
    .locals 2
    .parameter

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/b/c/a/s;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/b/c/a/s;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    new-instance v0, Lorg/b/c/a/r;

    iget-object v1, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lorg/b/c/a/r;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/b/c/a/s;->c(Lorg/b/c/c;)V

    .line 98
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Lorg/b/c/f;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/b/c/f;->valueOf(Ljava/lang/String;)Lorg/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/net/URI;
    .locals 4

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/b/c/a/s;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get HttpURLConnection URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
