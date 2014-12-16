.class Lcom/millennialmedia/android/BridgeMMCachedVideo$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMCachedVideo;->availableCachedVideos(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lcom/millennialmedia/android/BridgeMMCachedVideo;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->c:Lcom/millennialmedia/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->b:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;->b:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
