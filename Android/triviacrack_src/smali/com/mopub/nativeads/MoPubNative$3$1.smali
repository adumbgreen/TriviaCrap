.class Lcom/mopub/nativeads/MoPubNative$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative$3;->onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/DownloadResponse;

.field final synthetic b:Lcom/mopub/nativeads/MoPubNative$3;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative$3;Lcom/mopub/common/DownloadResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->a:Lcom/mopub/common/DownloadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 3
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->a:Lcom/mopub/common/DownloadResponse;

    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v1, v2}, Lcom/mopub/common/DownloadResponse;->getFirstHeader(Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->a(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/t;)V
    .locals 7
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v1

    .line 233
    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v6

    new-instance v0, Lcom/mopub/nativeads/NativeResponse;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->a:Lcom/mopub/common/DownloadResponse;

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iget-object v3, v3, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v3}, Lcom/mopub/nativeads/MoPubNative;->b(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubNative$3$1;->b:Lcom/mopub/nativeads/MoPubNative$3;

    iget-object v4, v4, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubNative;->c(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeResponse;-><init>(Landroid/content/Context;Lcom/mopub/common/DownloadResponse;Ljava/lang/String;Lcom/mopub/nativeads/t;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V

    invoke-interface {v6, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V

    goto :goto_0
.end method
