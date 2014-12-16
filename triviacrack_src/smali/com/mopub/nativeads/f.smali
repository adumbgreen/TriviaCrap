.class Lcom/mopub/nativeads/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/CacheService$DiskLruCacheGetListener;


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/e;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/mopub/nativeads/f;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    invoke-virtual {v0}, Lcom/mopub/nativeads/e;->b()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    if-eqz p2, :cond_2

    .line 57
    iget v0, p0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {p2, v0}, Lcom/mopub/nativeads/i;->byteArrayToBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    iget-object v1, v1, Lcom/mopub/nativeads/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    iget-object v0, v0, Lcom/mopub/nativeads/e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    iget v1, v1, Lcom/mopub/nativeads/e;->b:I

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    iget-object v0, v0, Lcom/mopub/nativeads/e;->a:Lcom/mopub/nativeads/ai;

    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:Lcom/mopub/nativeads/e;

    iget-object v1, v1, Lcom/mopub/nativeads/e;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/ai;->onSuccess(Ljava/util/Map;)V

    goto :goto_0
.end method
