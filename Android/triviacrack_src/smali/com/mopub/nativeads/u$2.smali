.class Lcom/mopub/nativeads/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/u;-><init>(Ljava/util/List;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/u;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/u;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativeads/u;->a:Z

    .line 109
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    iget v0, v0, Lcom/mopub/nativeads/u;->d:I

    const v1, 0x493e0

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->d()V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->c()V

    .line 115
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/nativeads/u;->b:Z

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->e(Lcom/mopub/nativeads/u;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v1}, Lcom/mopub/nativeads/u;->d(Lcom/mopub/nativeads/u;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    iget v2, v2, Lcom/mopub/nativeads/u;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->a(Lcom/mopub/nativeads/u;)Lcom/mopub/nativeads/MoPubNative;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativeads/u;->a:Z

    .line 91
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    iget v1, v0, Lcom/mopub/nativeads/u;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mopub/nativeads/u;->c:I

    .line 92
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->d()V

    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->b(Lcom/mopub/nativeads/u;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/aj;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/aj;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->b(Lcom/mopub/nativeads/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->c(Lcom/mopub/nativeads/u;)Lcom/mopub/nativeads/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-static {v0}, Lcom/mopub/nativeads/u;->c(Lcom/mopub/nativeads/u;)Lcom/mopub/nativeads/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/nativeads/v;->onAdsAvailable()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/u$2;->a:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->e()V

    goto :goto_0
.end method
