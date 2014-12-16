.class Lcom/mopub/nativeads/NativeResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeResponse;-><init>(Landroid/content/Context;Lcom/mopub/common/DownloadResponse;Ljava/lang/String;Lcom/mopub/nativeads/t;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mopub/nativeads/NativeResponse$1;->a:Lcom/mopub/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$1;->a:Lcom/mopub/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public onAdImpressed()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse$1;->a:Lcom/mopub/nativeads/NativeResponse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 112
    return-void
.end method
