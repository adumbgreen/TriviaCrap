.class public Leu/janmuller/android/simplecropimage/CropImage;
.super Leu/janmuller/android/simplecropimage/MonitoredActivity;
.source "SourceFile"


# instance fields
.field final a:I

.field b:Z

.field c:Z

.field d:Leu/janmuller/android/simplecropimage/e;

.field e:Ljava/lang/Runnable;

.field private f:Landroid/graphics/Bitmap$CompressFormat;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Leu/janmuller/android/simplecropimage/CropImageView;

.field private v:Landroid/content/ContentResolver;

.field private w:Landroid/graphics/Bitmap;

.field private x:Ljava/lang/String;

.field private y:Z

.field private final z:Leu/janmuller/android/simplecropimage/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/MonitoredActivity;-><init>()V

    .line 62
    const/16 v0, 0x400

    iput v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->a:I

    .line 84
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    .line 86
    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->h:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->i:Z

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->j:Landroid/os/Handler;

    .line 111
    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->y:Z

    .line 113
    new-instance v0, Leu/janmuller/android/simplecropimage/c;

    invoke-direct {v0}, Leu/janmuller/android/simplecropimage/c;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->z:Leu/janmuller/android/simplecropimage/c;

    .line 544
    new-instance v0, Leu/janmuller/android/simplecropimage/CropImage$7;

    invoke-direct {v0, p0}, Leu/janmuller/android/simplecropimage/CropImage$7;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->u:Leu/janmuller/android/simplecropimage/CropImageView;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 277
    const/4 v0, 0x0

    const-string v1, "Please wait\u2026"

    new-instance v2, Leu/janmuller/android/simplecropimage/CropImage$5;

    invoke-direct {v2, p0}, Leu/janmuller/android/simplecropimage/CropImage$5;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    iget-object v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->j:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Leu/janmuller/android/simplecropimage/k;->a(Leu/janmuller/android/simplecropimage/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 692
    invoke-static {p0}, Leu/janmuller/android/simplecropimage/CropImage;->b(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->a(Landroid/app/Activity;I)V

    .line 693
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 699
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 701
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 702
    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    sget v0, Lcom/etermax/o;->preparing_card:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 716
    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 718
    :cond_1
    return-void

    .line 707
    :cond_2
    sget v0, Lcom/etermax/o;->no_storage_card:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_3
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 711
    sget v0, Lcom/etermax/o;->not_enough_space:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 442
    const/4 v1, 0x0

    .line 444
    :try_start_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->v:Landroid/content/ContentResolver;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_0

    .line 446
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    .line 459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 460
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    const-string v0, "image-path"

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v0, "orientation_in_degrees"

    invoke-static {p0}, Leu/janmuller/android/simplecropimage/k;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 469
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    .line 471
    :goto_1
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 450
    :try_start_1
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(I)V

    .line 452
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    throw v0

    .line 467
    :cond_1
    const-string v0, "CropImage"

    const-string v1, "not defined image url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Leu/janmuller/android/simplecropimage/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/CropImage;->b()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 2
    .parameter

    .prologue
    .line 727
    :try_start_0
    const-string v0, ""

    .line 728
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 729
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x48c35000

    div-float/2addr v0, v1

    .line 736
    float-to-int v0, v0

    .line 742
    :goto_1
    return v0

    .line 732
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 742
    const/4 v0, -0x2

    goto :goto_1
.end method

.method static synthetic b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    :try_start_0
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->v:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 243
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 244
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 250
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, v6, :cond_0

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v6, :cond_1

    .line 251
    :cond_0
    const-wide/high16 v5, 0x4000

    const-wide/high16 v7, 0x4090

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    div-double v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x3fe0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v0, v3

    int-to-double v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    .line 254
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 256
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->v:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 257
    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v0, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v1

    .line 266
    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 264
    const-string v0, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v7, 0x4000

    const/4 v9, 0x0

    .line 310
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->c:Z

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->d:Leu/janmuller/android/simplecropimage/e;

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->c:Z

    .line 320
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->d:Leu/janmuller/android/simplecropimage/e;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/e;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 323
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 330
    :try_start_0
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->i:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    iget-object v6, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v2, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 345
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->i:Z

    if-eqz v0, :cond_2

    .line 352
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 354
    int-to-float v5, v3

    div-float/2addr v5, v7

    int-to-float v4, v4

    div-float/2addr v4, v7

    int-to-float v3, v3

    div-float/2addr v3, v7

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v4, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 355
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 356
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 360
    :cond_2
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->n:I

    if-eqz v0, :cond_7

    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->o:I

    if-eqz v0, :cond_7

    .line 362
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->t:Z

    if-eqz v0, :cond_6

    .line 366
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->n:I

    iget v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->o:I

    iget-boolean v4, p0, Leu/janmuller/android/simplecropimage/CropImage;->y:Z

    invoke-static {v0, v1, v2, v3, v4}, Leu/janmuller/android/simplecropimage/k;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    if-eq v1, v0, :cond_3

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    :cond_3
    :goto_2
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_9

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 420
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 421
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 422
    const/4 v0, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    goto/16 :goto_0

    .line 330
    :cond_5
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    throw v0

    .line 381
    :cond_6
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->n:I

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->o:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 384
    iget-object v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->d:Leu/janmuller/android/simplecropimage/e;

    invoke-virtual {v3}, Leu/janmuller/android/simplecropimage/e;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 385
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Leu/janmuller/android/simplecropimage/CropImage;->n:I

    iget v6, p0, Leu/janmuller/android/simplecropimage/CropImage;->o:I

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 387
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 388
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 391
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 394
    neg-int v5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 397
    iget-object v5, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5, v3, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 403
    :cond_7
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->r:I

    if-eqz v0, :cond_a

    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->s:I

    if-eqz v0, :cond_a

    .line 404
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->t:Z

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->s:I

    if-gt v0, v2, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->r:I

    if-le v0, v2, :cond_a

    .line 408
    :cond_8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->r:I

    iget v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->s:I

    iget-boolean v4, p0, Leu/janmuller/android/simplecropimage/CropImage;->y:Z

    invoke-static {v0, v1, v2, v3, v4}, Leu/janmuller/android/simplecropimage/k;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    if-eq v1, v0, :cond_3

    .line 411
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 426
    :cond_9
    sget v1, Lcom/etermax/o;->saving_image:I

    invoke-virtual {p0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leu/janmuller/android/simplecropimage/CropImage$6;

    invoke-direct {v2, p0, v0}, Leu/janmuller/android/simplecropimage/CropImage$6;-><init>(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->j:Landroid/os/Handler;

    invoke-static {p0, v10, v1, v2, v0}, Leu/janmuller/android/simplecropimage/k;->a(Leu/janmuller/android/simplecropimage/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 476
    const/4 v1, 0x0

    .line 478
    :try_start_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->v:Landroid/content/ContentResolver;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 479
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 480
    if-eqz v1, :cond_0

    .line 481
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 483
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 484
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 486
    array-length v0, v2

    new-array v0, v0, [B

    .line 487
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 489
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    .line 503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 504
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 506
    const-string v0, "image-path"

    iget-object v2, p0, Leu/janmuller/android/simplecropimage/CropImage;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v0, "orientation_in_degrees"

    invoke-static {p0}, Leu/janmuller/android/simplecropimage/k;->a(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 513
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    .line 515
    :goto_1
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 494
    :try_start_1
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(I)V

    .line 496
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/k;->a(Ljava/io/Closeable;)V

    throw v0

    .line 511
    :cond_1
    const-string v0, "CropImage"

    const-string v1, "not defined image url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->u:Leu/janmuller/android/simplecropimage/CropImageView;

    return-object v0
.end method

.method static synthetic c(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/CropImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic d(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Leu/janmuller/android/simplecropimage/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->k:Z

    return v0
.end method

.method static synthetic f(Leu/janmuller/android/simplecropimage/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->p:I

    return v0
.end method

.method static synthetic g(Leu/janmuller/android/simplecropimage/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->i:Z

    return v0
.end method

.method static synthetic h(Leu/janmuller/android/simplecropimage/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->l:I

    return v0
.end method

.method static synthetic i(Leu/janmuller/android/simplecropimage/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->m:I

    return v0
.end method

.method static synthetic j(Leu/janmuller/android/simplecropimage/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->h:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-super {p0, p1}, Leu/janmuller/android/simplecropimage/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->v:Landroid/content/ContentResolver;

    .line 122
    invoke-virtual {p0, v3}, Leu/janmuller/android/simplecropimage/CropImage;->requestWindowFeature(I)Z

    .line 123
    sget v0, Lcom/etermax/k;->cropimage:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->setContentView(I)V

    .line 125
    sget v0, Lcom/etermax/i;->image:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/CropImageView;

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->u:Leu/janmuller/android/simplecropimage/CropImageView;

    .line 127
    invoke-static {p0}, Leu/janmuller/android/simplecropimage/CropImage;->a(Landroid/app/Activity;)V

    .line 129
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2

    .line 133
    const-string v1, "circleCrop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->u:Leu/janmuller/android/simplecropimage/CropImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Leu/janmuller/android/simplecropimage/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 139
    :cond_0
    iput-boolean v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->i:Z

    .line 140
    iput v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->l:I

    .line 141
    iput v3, p0, Leu/janmuller/android/simplecropimage/CropImage;->m:I

    .line 144
    :cond_1
    const-string v1, "image-path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->x:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->x:Ljava/lang/String;

    invoke-direct {p0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->g:Landroid/net/Uri;

    .line 147
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->x:Ljava/lang/String;

    invoke-direct {p0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    .line 149
    const-string v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 151
    const-string v1, "aspectX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->l:I

    .line 156
    const-string v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "aspectY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->m:I

    .line 163
    const-string v1, "outputX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->n:I

    .line 164
    const-string v1, "outputY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->o:I

    .line 165
    const-string v1, "minOutputX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->p:I

    .line 166
    const-string v1, "minOutputY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->q:I

    .line 167
    const-string v1, "maxOutputX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->r:I

    .line 168
    const-string v1, "maxOutputY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->s:I

    .line 169
    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->t:Z

    .line 170
    const-string v1, "scaleUpIfNeeded"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->y:Z

    .line 171
    const-string v1, "base64"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->k:Z

    .line 174
    :cond_2
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 176
    const-string v0, "CropImage"

    const-string v1, "finish!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    .line 228
    :goto_0
    return-void

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aspect_x must be integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "aspect_y must be integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_5
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->p:I

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->q:I

    if-ge v0, v1, :cond_7

    .line 182
    :cond_6
    const-string v0, "La imagen seleccionada no tiene el tama\u00f1o m\u00ednimo requerido"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    goto :goto_0

    .line 188
    :cond_7
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 190
    sget v0, Lcom/etermax/i;->discard:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/janmuller/android/simplecropimage/CropImage$1;

    invoke-direct {v1, p0}, Leu/janmuller/android/simplecropimage/CropImage$1;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/etermax/i;->save:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/janmuller/android/simplecropimage/CropImage$2;

    invoke-direct {v1, p0}, Leu/janmuller/android/simplecropimage/CropImage$2;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v0, Lcom/etermax/i;->rotateLeft:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/janmuller/android/simplecropimage/CropImage$3;

    invoke-direct {v1, p0}, Leu/janmuller/android/simplecropimage/CropImage$3;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v0, Lcom/etermax/i;->rotateRight:I

    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leu/janmuller/android/simplecropimage/CropImage$4;

    invoke-direct {v1, p0}, Leu/janmuller/android/simplecropimage/CropImage$4;-><init>(Leu/janmuller/android/simplecropimage/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-direct {p0}, Leu/janmuller/android/simplecropimage/CropImage;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Leu/janmuller/android/simplecropimage/MonitoredActivity;->onDestroy()V

    .line 538
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 542
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0}, Leu/janmuller/android/simplecropimage/MonitoredActivity;->onPause()V

    .line 530
    invoke-static {}, Leu/janmuller/android/simplecropimage/a;->a()Leu/janmuller/android/simplecropimage/a;

    move-result-object v0

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage;->z:Leu/janmuller/android/simplecropimage/c;

    invoke-virtual {v0, v1}, Leu/janmuller/android/simplecropimage/a;->a(Leu/janmuller/android/simplecropimage/c;)V

    .line 531
    return-void
.end method
