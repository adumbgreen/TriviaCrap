.class Lcom/mopub/nativeads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/mopub/nativeads/i;->a:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/mopub/nativeads/i;->a:I

    return v0
.end method

.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-static {p0}, Lcom/mopub/common/CacheService;->getFromBitmapCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {v0}, Lcom/mopub/nativeads/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    return-object v1
.end method

.method static a(Landroid/content/Context;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 39
    sget v0, Lcom/mopub/nativeads/i;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 42
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 44
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v2

    sget-object v3, Lcom/mopub/common/util/VersionCode;->HONEYCOMB_MR2:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/VersionCode;->isBelow(Lcom/mopub/common/util/VersionCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 51
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/mopub/nativeads/i;->a:I

    .line 53
    :cond_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/mopub/nativeads/i;->a(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/mopub/common/CacheService;->initialize(Landroid/content/Context;)V

    .line 58
    invoke-static {p1, p2}, Lcom/mopub/nativeads/i;->a(Ljava/util/List;Lcom/mopub/nativeads/l;)V

    .line 59
    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/mopub/common/CacheService;->putToBitmapCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 90
    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/mopub/common/CacheService;->putToBitmapCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    invoke-static {p0, p2}, Lcom/mopub/common/CacheService;->putToDiskCacheAsync(Ljava/lang/String;[B)V

    .line 95
    return-void
.end method

.method static a(Ljava/util/List;Lcom/mopub/nativeads/l;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/nativeads/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    invoke-static {p0, v0}, Lcom/mopub/nativeads/i;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {p1, v0}, Lcom/mopub/nativeads/l;->onSuccess(Ljava/util/Map;)V

    .line 84
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v2, Lcom/mopub/nativeads/e;

    new-instance v3, Lcom/mopub/nativeads/j;

    invoke-direct {v3, p1, v0}, Lcom/mopub/nativeads/j;-><init>(Lcom/mopub/nativeads/l;Ljava/util/Map;)V

    sget v0, Lcom/mopub/nativeads/i;->a:I

    invoke-direct {v2, v1, v3, v0}, Lcom/mopub/nativeads/e;-><init>(Ljava/util/List;Lcom/mopub/nativeads/ai;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v2}, Lcom/mopub/nativeads/e;->a()V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "Unable to initialize ImageDiskTaskManager"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-interface {p1}, Lcom/mopub/nativeads/l;->onFail()V

    goto :goto_0
.end method

.method public static asBitmap(Lcom/mopub/common/DownloadResponse;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/DownloadResponse;->getByteArray()[B

    move-result-object v0

    .line 204
    invoke-static {v0, p1}, Lcom/mopub/nativeads/i;->byteArrayToBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrayToBitmap([BI)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    if-gtz p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 213
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 214
    array-length v2, p0

    invoke-static {p0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 215
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2, p1}, Lcom/mopub/nativeads/i;->calculateInSampleSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    :goto_1
    invoke-static {v1}, Lcom/mopub/nativeads/i;->getMemBytes(Landroid/graphics/BitmapFactory$Options;)J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 219
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 222
    :cond_2
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    array-length v2, p0

    invoke-static {p0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 231
    if-le v0, p1, :cond_3

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v2, v0

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 234
    invoke-static {v1, p1, v0, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static calculateInSampleSize(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x1

    .line 256
    if-le p0, p1, :cond_0

    .line 257
    div-int/lit8 v1, p0, 0x2

    .line 259
    :goto_0
    div-int v2, v1, v0

    if-lt v2, p1, :cond_0

    .line 260
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 264
    :cond_0
    return v0
.end method

.method public static getMemBytes(Landroid/graphics/BitmapFactory$Options;)J
    .locals 4
    .parameter

    .prologue
    .line 245
    const-wide/16 v0, 0x4

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 246
    return-wide v0
.end method
