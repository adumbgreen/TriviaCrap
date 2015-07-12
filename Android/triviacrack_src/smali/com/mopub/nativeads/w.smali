.class Lcom/mopub/nativeads/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Ljava/util/WeakHashMap;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/w;->a:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/w;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method static a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 41
    if-nez p4, :cond_0

    .line 42
    const-string v0, "ViewBinder is null, returning empty view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 43
    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    :goto_0
    return-object p0

    .line 46
    :cond_0
    new-instance v0, Lcom/mopub/nativeads/MoPubNativeAdRenderer;

    invoke-direct {v0, p4}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 47
    if-nez p0, :cond_1

    .line 48
    invoke-virtual {v0, p2, p1}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 51
    :cond_1
    invoke-static {p2, p0}, Lcom/mopub/nativeads/w;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 53
    if-nez p3, :cond_2

    .line 55
    const-string v0, "NativeResponse is null, returning hidden view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p3}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    const-string v0, "NativeResponse is destroyed, returning hidden view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {p2, p0, p3}, Lcom/mopub/nativeads/w;->a(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 62
    invoke-virtual {v0, p0, p3}, Lcom/mopub/nativeads/MoPubNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Lcom/mopub/nativeads/o;
    .locals 2
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/mopub/nativeads/w;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/o;

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/mopub/nativeads/o;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/o;-><init>(Landroid/content/Context;)V

    .line 90
    sget-object v1, Lcom/mopub/nativeads/w;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Lcom/mopub/nativeads/w;->a(Landroid/content/Context;)Lcom/mopub/nativeads/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;)V

    .line 70
    sget-object v0, Lcom/mopub/nativeads/w;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeResponse;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->clear(Landroid/view/View;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/mopub/nativeads/w;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p2}, Lcom/mopub/nativeads/NativeResponse;->isOverridingImpressionTracker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/mopub/nativeads/w;->a(Landroid/content/Context;)Lcom/mopub/nativeads/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/o;->a(Landroid/view/View;Lcom/mopub/nativeads/NativeResponse;)V

    .line 83
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mopub/nativeads/NativeResponse;->prepare(Landroid/view/View;)V

    .line 84
    return-void
.end method
