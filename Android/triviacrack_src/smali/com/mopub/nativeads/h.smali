.class Lcom/mopub/nativeads/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/g;


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/g;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/g;Lcom/mopub/nativeads/g$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/h;-><init>(Lcom/mopub/nativeads/g;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    invoke-virtual {v0}, Lcom/mopub/nativeads/g;->b()V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully downloaded image bye array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    iget-object v0, v0, Lcom/mopub/nativeads/g;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    iget-object v0, v0, Lcom/mopub/nativeads/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    iget v1, v1, Lcom/mopub/nativeads/g;->b:I

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    iget-object v0, v0, Lcom/mopub/nativeads/g;->a:Lcom/mopub/nativeads/ai;

    iget-object v1, p0, Lcom/mopub/nativeads/h;->a:Lcom/mopub/nativeads/g;

    iget-object v1, v1, Lcom/mopub/nativeads/g;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/ai;->onSuccess(Ljava/util/Map;)V

    goto :goto_0
.end method
