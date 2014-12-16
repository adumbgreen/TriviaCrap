.class public Lcom/etermax/gamescommon/resources/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/etermax/tools/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 185
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v0, :sswitch_data_0

    .line 197
    const/4 v0, 0x4

    .line 201
    :goto_0
    return v0

    .line 189
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    move v0, v1

    .line 201
    goto :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/resources/b;
    .locals 1
    .parameter

    .prologue
    .line 256
    sget-object v0, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    invoke-static {p0, v0}, Lcom/etermax/gamescommon/resources/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/resources/b;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-wide/high16 v7, 0x4000

    const/4 v0, 0x0

    .line 221
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 222
    invoke-static {p0, v1}, Lcom/etermax/gamescommon/resources/a;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v2

    .line 225
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 226
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v5, v1

    float-to-double v5, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 227
    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 229
    const/4 v1, 0x7

    new-array v5, v1, [Lcom/etermax/gamescommon/resources/b;

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v5, v0

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v5, v9

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->c:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v5, v10

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v5, v11

    const/4 v1, 0x4

    sget-object v6, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    aput-object v6, v5, v1

    const/4 v1, 0x5

    sget-object v6, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    aput-object v6, v5, v1

    const/4 v1, 0x6

    sget-object v6, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    aput-object v6, v5, v1

    .line 231
    const/4 v1, 0x7

    new-array v6, v1, [Lcom/etermax/gamescommon/resources/b;

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->a:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v6, v0

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->b:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v6, v9

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->c:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v6, v10

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v1, v6, v11

    const/4 v1, 0x4

    sget-object v7, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v7, v6, v1

    const/4 v1, 0x5

    sget-object v7, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v7, v6, v1

    const/4 v1, 0x6

    sget-object v7, Lcom/etermax/gamescommon/resources/b;->d:Lcom/etermax/gamescommon/resources/b;

    aput-object v7, v6, v1

    .line 233
    array-length v7, v5

    move v1, v0

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v8, v5, v0

    .line 234
    invoke-virtual {v8}, Lcom/etermax/gamescommon/resources/b;->b()I

    move-result v9

    invoke-virtual {p1}, Lcom/etermax/gamescommon/resources/b;->b()I

    move-result v10

    if-gt v9, v10, :cond_0

    .line 235
    aput-object v8, v6, v1

    .line 239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    aput-object p1, v6, v1

    goto :goto_1

    .line 243
    :cond_1
    const-wide/high16 v0, 0x401c

    cmpg-double v0, v3, v0

    if-gez v0, :cond_2

    .line 244
    aget-object v0, v6, v2

    .line 251
    :goto_2
    return-object v0

    .line 247
    :cond_2
    const-wide/high16 v0, 0x4023

    cmpg-double v0, v3, v0

    if-gez v0, :cond_3

    .line 248
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v6, v0

    goto :goto_2

    .line 251
    :cond_3
    add-int/lit8 v0, v2, 0x2

    aget-object v0, v6, v0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/etermax/gamescommon/resources/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/resources/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/resources/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/etermax/tools/e/a;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x400

    div-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Lcom/etermax/tools/e/a;-><init>(I)V

    iput-object v0, p0, Lcom/etermax/gamescommon/resources/a;->b:Lcom/etermax/tools/e/a;

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/etermax/gamescommon/resources/a;->b:Lcom/etermax/tools/e/a;

    invoke-virtual {v1, p1}, Lcom/etermax/tools/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 98
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 107
    :goto_0
    if-nez v2, :cond_3

    .line 111
    :try_start_2
    iget-object v1, p0, Lcom/etermax/gamescommon/resources/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 112
    :try_start_3
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 115
    if-eqz v1, :cond_3

    .line 116
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v1, v2

    .line 121
    :goto_1
    if-nez v1, :cond_1

    .line 135
    :goto_2
    return-object v0

    .line 101
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 105
    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 104
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 113
    :catch_2
    move-exception v1

    move-object v1, v0

    .line 115
    :goto_3
    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v1, v2

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 131
    :catch_3
    move-exception v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 126
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/etermax/gamescommon/resources/a;->b:Lcom/etermax/tools/e/a;

    invoke-virtual {v2, p1, v1}, Lcom/etermax/tools/e/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/etermax/gamescommon/resources/a;->b:Lcom/etermax/tools/e/a;

    invoke-virtual {v1, p1}, Lcom/etermax/tools/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_2

    .line 115
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    .line 113
    :catch_4
    move-exception v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public b()Lcom/etermax/gamescommon/resources/b;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/resources/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/resources/a;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    return-object v0
.end method
