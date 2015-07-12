.class Lcom/mopub/nativeads/MoPubNative$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 219
    if-nez p2, :cond_1

    .line 220
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->SERVER_ERROR_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNEXPECTED_RESPONSE_CODE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->EMPTY_AD_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 229
    :cond_4
    new-instance v0, Lcom/mopub/nativeads/MoPubNative$3$1;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/MoPubNative$3$1;-><init>(Lcom/mopub/nativeads/MoPubNative$3;Lcom/mopub/common/DownloadResponse;)V

    .line 245
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v1}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v2}, Lcom/mopub/nativeads/MoPubNative;->d(Lcom/mopub/nativeads/MoPubNative;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/mopub/nativeads/d;->loadNativeAd(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/DownloadResponse;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V

    goto :goto_0
.end method
