.class Lcom/millennialmedia/android/BridgeMMBanner;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    const-string v1, "resize"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMBanner;->resize(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resize(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 41
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMBanner;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/millennialmedia/android/MMWebView;

    .line 42
    if-eqz v10, :cond_2

    .line 43
    invoke-virtual {v10}, Lcom/millennialmedia/android/MMWebView;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "State is currently resized"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    .line 57
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    .line 61
    :goto_2
    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v1, "offsetY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v6, v1

    .line 71
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v5, v0

    .line 75
    :cond_1
    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 78
    invoke-virtual {v10}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMBanner;->b(Landroid/content/Context;)I

    move-result v8

    .line 83
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMBanner;->a(Landroid/content/Context;)I

    move-result v9

    .line 84
    new-instance v0, Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v0 .. v9}, Lcom/millennialmedia/android/DTOResizeParameters;-><init>(FIILjava/lang/String;IIZII)V

    .line 88
    invoke-virtual {v10, v0}, Lcom/millennialmedia/android/MMWebView;->a(Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 90
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_1
.end method
