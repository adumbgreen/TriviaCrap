.class Lcom/mopub/nativeads/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/q;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/q;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/q;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mopub/nativeads/q$1;->a:Lcom/mopub/nativeads/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesCached()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/nativeads/q$1;->a:Lcom/mopub/nativeads/q;

    invoke-static {v0}, Lcom/mopub/nativeads/q;->a(Lcom/mopub/nativeads/q;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/q$1;->a:Lcom/mopub/nativeads/q;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/t;)V

    .line 92
    return-void
.end method

.method public onImagesFailedToCache(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/q$1;->a:Lcom/mopub/nativeads/q;

    invoke-static {v0}, Lcom/mopub/nativeads/q;->a(Lcom/mopub/nativeads/q;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 97
    return-void
.end method
