.class Lcom/mopub/nativeads/e;
.super Lcom/mopub/nativeads/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativeads/ah",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/mopub/nativeads/ai;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/ai",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/ah;-><init>(Ljava/util/List;Lcom/mopub/nativeads/ai;)V

    .line 19
    iput p3, p0, Lcom/mopub/nativeads/e;->g:I

    .line 20
    iput-object p1, p0, Lcom/mopub/nativeads/e;->f:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/nativeads/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/mopub/nativeads/e;->a:Lcom/mopub/nativeads/ai;

    iget-object v1, p0, Lcom/mopub/nativeads/e;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/ai;->onSuccess(Ljava/util/Map;)V

    .line 29
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/f;

    iget v0, p0, Lcom/mopub/nativeads/e;->g:I

    invoke-direct {v1, p0, v0}, Lcom/mopub/nativeads/f;-><init>(Lcom/mopub/nativeads/e;I)V

    .line 30
    iget-object v0, p0, Lcom/mopub/nativeads/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->getFromDiskCacheAsync(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V

    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/nativeads/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mopub/nativeads/e;->a:Lcom/mopub/nativeads/ai;

    invoke-interface {v0}, Lcom/mopub/nativeads/ai;->onFail()V

    .line 39
    :cond_0
    return-void
.end method
