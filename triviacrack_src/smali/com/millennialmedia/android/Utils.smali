.class Lcom/millennialmedia/android/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6
    .parameter

    .prologue
    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    if-nez p0, :cond_1

    .line 333
    const-string v1, "Utils"

    const-string v2, "Unable to calculate view dimensions for null view"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_0

    .line 342
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 343
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 346
    :try_start_0
    const-string v3, "x"

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v3, "y"

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    const-string v2, "Utils"

    const-string v3, "Unable to build view dimensions"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
