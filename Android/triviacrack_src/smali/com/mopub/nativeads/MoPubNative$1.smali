.class final Lcom/mopub/nativeads/MoPubNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubNative;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeResponse;->destroy()V

    .line 45
    return-void
.end method
