.class Lcom/millennialmedia/android/BridgeMMMedia;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"


# static fields
.field private static m:Ljava/lang/Object;


# instance fields
.field a:Landroid/media/MediaScannerConnection;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 53
    const-string v0, "isSourceTypeAvailable"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->d:Ljava/lang/String;

    .line 54
    const-string v0, "availableSourceTypes"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->e:Ljava/lang/String;

    .line 55
    const-string v0, "getPicture"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->f:Ljava/lang/String;

    .line 56
    const-string v0, "writeToPhotoLibrary"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->g:Ljava/lang/String;

    .line 57
    const-string v0, "playVideo"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->h:Ljava/lang/String;

    .line 58
    const-string v0, "stopAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->i:Ljava/lang/String;

    .line 59
    const-string v0, "getDeviceVolume"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->j:Ljava/lang/String;

    .line 60
    const-string v0, "playAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->k:Ljava/lang/String;

    .line 61
    const-string v0, "playSound"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->l:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 372
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 333
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 334
    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 340
    const-string v2, "Center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 342
    :cond_0
    const-string v2, "ScaleToAspectFit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 345
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 346
    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    const-string v2, "ScaleToAspectFill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 353
    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v3, v3, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 575
    if-eqz v0, :cond_0

    .line 576
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/android/BridgeMMMedia$1;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/android/BridgeMMMedia$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->a:Landroid/media/MediaScannerConnection;

    .line 594
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->a:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 597
    :cond_0
    return-void
.end method

.method private static final a(Ljava/io/File;IILjava/lang/String;)[B
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 384
    .line 388
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 392
    const/4 v1, 0x0

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 394
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 395
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 398
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_11

    .line 399
    :cond_0
    if-le v2, v1, :cond_6

    .line 400
    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 407
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    .line 409
    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 410
    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 411
    const/4 v1, 0x0

    invoke-static {v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v4

    .line 416
    if-eqz v3, :cond_1

    .line 417
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_1
    if-eqz v2, :cond_2

    .line 419
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .line 426
    :goto_1
    if-eqz v3, :cond_5

    .line 427
    invoke-static {v3, p3, p1, p2, v5}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 431
    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 432
    :try_start_5
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 433
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 437
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    .line 443
    if-eqz v3, :cond_3

    .line 444
    :try_start_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_3
    if-eqz v4, :cond_4

    .line 446
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_4
    if-eqz v2, :cond_5

    .line 448
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 454
    :cond_5
    :goto_3
    return-object v0

    .line 402
    :cond_6
    int-to-float v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    :try_start_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9

    move-result v1

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 423
    goto :goto_1

    .line 412
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 413
    :goto_4
    :try_start_8
    const-string v4, "BridgeMMMedia"

    const-string v6, "Can\'t find file to scale bitmap"

    invoke-static {v4, v6, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 416
    if-eqz v3, :cond_7

    .line 417
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_7
    if-eqz v2, :cond_8

    .line 419
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    move-object v3, v0

    .line 422
    goto :goto_1

    .line 420
    :catch_2
    move-exception v1

    .line 421
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    .line 423
    goto :goto_1

    .line 415
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 416
    :goto_5
    if-eqz v3, :cond_9

    .line 417
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_9
    if-eqz v2, :cond_a

    .line 419
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 422
    :cond_a
    :goto_6
    throw v0

    .line 420
    :catch_3
    move-exception v1

    .line 421
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 436
    :cond_b
    :try_start_b
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v4, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 438
    :catch_4
    move-exception v1

    .line 440
    :goto_7
    :try_start_c
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error scaling bitmap"

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 443
    if-eqz v3, :cond_c

    .line 444
    :try_start_d
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_c
    if-eqz v4, :cond_d

    .line 446
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_d
    if-eqz v2, :cond_5

    .line 448
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_3

    .line 449
    :catch_5
    move-exception v1

    .line 450
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 449
    :catch_6
    move-exception v1

    .line 450
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 442
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 443
    :goto_8
    if-eqz v3, :cond_e

    .line 444
    :try_start_e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_e
    if-eqz v4, :cond_f

    .line 446
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_f
    if-eqz v2, :cond_10

    .line 448
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 451
    :cond_10
    :goto_9
    throw v0

    .line 449
    :catch_7
    move-exception v1

    .line 450
    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 442
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 438
    :catch_8
    move-exception v1

    move-object v2, v0

    goto :goto_7

    .line 415
    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 412
    :catch_9
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_4

    :cond_11
    move v1, v5

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 103
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 107
    goto :goto_0

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 117
    if-eqz v0, :cond_1

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 124
    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0
.end method


# virtual methods
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
    .line 71
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->isSourceTypeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->availableSourceTypes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->getPicture(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->writeToPhotoLibrary(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->getDeviceVolume(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_8
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playSound(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public availableSourceTypes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    .line 159
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 161
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 166
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 167
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 168
    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 169
    return-object v1
.end method

.method public getDeviceVolume(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 703
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 704
    if-eqz v0, :cond_0

    .line 705
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->s(Landroid/content/Context;)I

    move-result v1

    .line 706
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 707
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 710
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no volume available"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getPicture(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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

    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 469
    const-string v1, "sourceType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    const-string v2, "constrainHeight"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    const-string v3, "constrainWidth"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    const-string v4, "contentMode"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 474
    if-nez v4, :cond_0

    .line 475
    const-string v4, ""

    .line 476
    :cond_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 477
    :cond_1
    const-string v0, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 519
    :goto_0
    monitor-exit p0

    return-object v0

    .line 480
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 481
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 482
    mul-int v6, v2, v3

    const v7, 0x57e40

    if-le v6, v7, :cond_3

    .line 483
    const-string v0, "constrainHeight * constrainWidth > 360000"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 488
    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tmp_mm_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    const-string v7, "Camera"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->b()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    const-string v7, "Photo Library"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "PhotoLibrary"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    .line 494
    :cond_6
    :try_start_2
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    .line 495
    sget-object v7, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 496
    :try_start_3
    invoke-static {v0, v6, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 498
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    .line 506
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_7

    .line 507
    invoke-static {v6, v3, v2, v4}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v1

    .line 509
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 510
    if-eqz v1, :cond_7

    .line 511
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 512
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 513
    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->e:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 498
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    :try_start_7
    const-string v1, "BridgeMMMedia"

    const-string v7, "Error with pickerActivity synchronization"

    invoke-static {v1, v7, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 503
    const/4 v0, 0x0

    :try_start_8
    sput-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/millennialmedia/android/BridgeMMMedia;->m:Ljava/lang/Object;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    move-object v0, v5

    .line 519
    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 138
    const-string v0, "sourceType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "false"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 635
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 637
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v3

    .line 639
    if-nez v3, :cond_0

    move-object v0, v2

    .line 656
    :goto_0
    return-object v0

    .line 641
    :cond_0
    invoke-virtual {v3}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    const-string v0, "Audio already playing."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_1
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 645
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_2
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 656
    goto :goto_0
.end method

.method public playSound(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    const/4 v2, 0x0

    .line 668
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 681
    :goto_0
    return-object v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 671
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 672
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 673
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 681
    goto :goto_0
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    .line 608
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 609
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 611
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 613
    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    .line 615
    :cond_0
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 618
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 687
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 535
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 538
    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 539
    const-string v2, "Pictures"

    .line 542
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    const-string v4, "Pictures"

    invoke-static {v3, v4, v2, v0}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    const-string v0, "Failed to download"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 567
    :goto_0
    monitor-exit p0

    return-object v0

    .line 553
    :cond_0
    :try_start_1
    const-string v2, "Pictures"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/android/AdCache;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No file at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMMedia;->a(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/millennialmedia/android/AdCache;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 561
    const-string v0, "Storage not mounted, cannot add image to photo library photo library"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    const-string v0, "Image saved to photo library"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
