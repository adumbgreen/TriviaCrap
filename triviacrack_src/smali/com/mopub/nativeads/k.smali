.class Lcom/mopub/nativeads/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/ai;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/ai",
        "<",
        "Lcom/mopub/common/DownloadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/nativeads/l;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/l;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/nativeads/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/mopub/nativeads/k;->a:Lcom/mopub/nativeads/l;

    .line 172
    iput-object p2, p0, Lcom/mopub/nativeads/k;->b:Ljava/util/Map;

    .line 173
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mopub/nativeads/k;->a:Lcom/mopub/nativeads/l;

    invoke-interface {v0}, Lcom/mopub/nativeads/l;->onFail()V

    .line 195
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/DownloadResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/DownloadResponse;

    invoke-static {}, Lcom/mopub/nativeads/i;->a()I

    move-result v3

    invoke-static {v1, v3}, Lcom/mopub/nativeads/i;->asBitmap(Lcom/mopub/common/DownloadResponse;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    if-nez v3, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decoding image for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mopub/nativeads/k;->onFail()V

    .line 190
    :goto_1
    return-void

    .line 186
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/DownloadResponse;

    invoke-virtual {v0}, Lcom/mopub/common/DownloadResponse;->getByteArray()[B

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/mopub/nativeads/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/k;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/k;->a:Lcom/mopub/nativeads/l;

    iget-object v1, p0, Lcom/mopub/nativeads/k;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/l;->onSuccess(Ljava/util/Map;)V

    goto :goto_1
.end method
