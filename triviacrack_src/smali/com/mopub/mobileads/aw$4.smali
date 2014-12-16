.class Lcom/mopub/mobileads/aw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/aw;->d(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/mopub/mobileads/aw;

.field private d:Ljava/net/URI;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    iput-object p2, p0, Lcom/mopub/mobileads/aw$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/aw$4;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 382
    new-instance v0, Lcom/mopub/mobileads/ax;

    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/mopub/mobileads/ax;-><init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/aw$1;)V

    .line 383
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    invoke-static {v2}, Lcom/mopub/mobileads/aw;->a(Lcom/mopub/mobileads/aw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/mopub/mobileads/aw$4;->g:Landroid/media/MediaScannerConnection;

    .line 384
    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->g:Landroid/media/MediaScannerConnection;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/ax;->a(Lcom/mopub/mobileads/ax;Landroid/media/MediaScannerConnection;)V

    .line 385
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->g:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/aw$4;->d:Ljava/net/URI;

    .line 347
    invoke-static {}, Lcom/mopub/mobileads/factories/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 348
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/mopub/mobileads/aw$4;->d:Ljava/net/URI;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 350
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/aw$4;->e:Ljava/io/InputStream;

    .line 353
    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_0

    .line 355
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/aw$4;->d:Ljava/net/URI;

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    iget-object v2, p0, Lcom/mopub/mobileads/aw$4;->d:Ljava/net/URI;

    invoke-static {v1, v2, v0}, Lcom/mopub/mobileads/aw;->a(Lcom/mopub/mobileads/aw;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mopub/mobileads/aw$4;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/mopub/mobileads/aw$4;->f:Ljava/io/OutputStream;

    .line 363
    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->e:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/mopub/mobileads/aw$4;->f:Ljava/io/OutputStream;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/aw$4;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->f:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 379
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    invoke-static {v0}, Lcom/mopub/mobileads/aw;->b(Lcom/mopub/mobileads/aw;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/aw$4$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/aw$4$1;-><init>(Lcom/mopub/mobileads/aw$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->e:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4;->f:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->e:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 377
    iget-object v1, p0, Lcom/mopub/mobileads/aw$4;->f:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0
.end method
