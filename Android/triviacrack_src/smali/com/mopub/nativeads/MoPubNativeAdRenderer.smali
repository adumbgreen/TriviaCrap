.class public Lcom/mopub/nativeads/MoPubNativeAdRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer",
        "<",
        "Lcom/mopub/nativeads/NativeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/nativeads/ViewBinder;

.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->b:Ljava/util/WeakHashMap;

    .line 34
    return-void
.end method

.method private a(Landroid/view/View;Lcom/mopub/nativeads/ab;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p2, p3}, Lcom/mopub/nativeads/ab;->a(Lcom/mopub/nativeads/NativeResponse;)V

    .line 73
    invoke-virtual {p2, p1, p3, p4}, Lcom/mopub/nativeads/ab;->a(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V

    .line 74
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/ab;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/ab;

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-static {p1, p2}, Lcom/mopub/nativeads/ab;->a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/ab;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-object v0
.end method

.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/ab;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string v0, "Could not create NativeViewHolder."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a:Lcom/mopub/nativeads/ViewBinder;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->a(Landroid/view/View;Lcom/mopub/nativeads/ab;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p2, Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    return-void
.end method
