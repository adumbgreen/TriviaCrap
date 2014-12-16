.class public Lcom/mopub/common/DownloadResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private final b:I

.field private final c:J

.field private final d:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mopub/common/DownloadResponse;->a:[B

    .line 19
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {v1, v3}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/DownloadResponse;->a:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 27
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 30
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/mopub/common/DownloadResponse;->b:I

    .line 31
    iget-object v0, p0, Lcom/mopub/common/DownloadResponse;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mopub/common/DownloadResponse;->c:J

    .line 32
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/DownloadResponse;->d:[Lorg/apache/http/Header;

    .line 33
    return-void

    .line 26
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 27
    invoke-static {v3}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 26
    :catchall_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/common/DownloadResponse;->a:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/mopub/common/DownloadResponse;->c:J

    return-wide v0
.end method

.method public getFirstHeader(Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 48
    iget-object v1, p0, Lcom/mopub/common/DownloadResponse;->d:[Lorg/apache/http/Header;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 49
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/mopub/common/DownloadResponse;->b:I

    return v0
.end method
