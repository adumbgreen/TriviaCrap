.class public Lcom/etermax/tools/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/etermax/tools/d/a;

.field private c:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/etermax/tools/d/h;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/etermax/tools/d/g;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Lcom/etermax/tools/d/h;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/d/g;->f:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/etermax/tools/d/g;->a(Lcom/etermax/tools/d/h;)V

    .line 77
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Lcom/etermax/tools/d/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/etermax/tools/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 531
    :goto_0
    return-wide v0

    .line 530
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/etermax/tools/d/h;)Lcom/etermax/tools/d/g;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lcom/etermax/tools/d/g;->a(Landroid/support/v4/app/FragmentManager;)Lcom/etermax/tools/d/i;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/etermax/tools/d/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/d/g;

    .line 107
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/etermax/tools/d/g;

    invoke-direct {v0, p1}, Lcom/etermax/tools/d/g;-><init>(Lcom/etermax/tools/d/h;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/etermax/tools/d/i;->a(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)Lcom/etermax/tools/d/i;
    .locals 3
    .parameter

    .prologue
    .line 544
    const-string v0, "ImageCache"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/d/i;

    .line 547
    if-nez v0, :cond_0

    .line 548
    new-instance v0, Lcom/etermax/tools/d/i;

    invoke-direct {v0}, Lcom/etermax/tools/d/i;-><init>()V

    .line 549
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 552
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Lcom/etermax/tools/d/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 437
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/etermax/tools/d/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/etermax/tools/d/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 437
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 465
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 467
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/tools/d/h;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    .line 124
    iget-object v0, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget-boolean v0, v0, Lcom/etermax/tools/d/h;->f:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory cache created (size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget v2, v2, Lcom/etermax/tools/d/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/etermax/tools/d/g$1;

    iget-object v1, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget v1, v1, Lcom/etermax/tools/d/h;->a:I

    invoke-direct {v0, p0, v1}, Lcom/etermax/tools/d/g$1;-><init>(Lcom/etermax/tools/d/g;I)V

    iput-object v0, p0, Lcom/etermax/tools/d/g;->c:Landroid/support/v4/util/LruCache;

    .line 143
    :cond_0
    iget-boolean v0, p1, Lcom/etermax/tools/d/h;->i:Z

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/etermax/tools/d/g;->a()V

    .line 147
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 452
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 454
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/d/g;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 496
    invoke-static {}, Lcom/etermax/tools/d/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 499
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/etermax/tools/d/g;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {p1}, Lcom/etermax/tools/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    iget-object v3, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/etermax/tools/d/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 260
    :try_start_1
    iget-object v2, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0

    .line 263
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 266
    :try_start_3
    iget-object v2, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v2, v1}, Lcom/etermax/tools/d/a;->a(Ljava/lang/String;)Lcom/etermax/tools/d/e;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_2

    .line 268
    const-string v2, "ImageCache"

    const-string v4, "Disk cache hit"

    invoke-static {v2, v4}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/etermax/tools/d/e;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 271
    if-eqz v2, :cond_3

    .line 273
    :try_start_4
    new-instance v1, Lcom/etermax/tools/d/f;

    invoke-direct {v1, v2}, Lcom/etermax/tools/d/f;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    .line 283
    if-eqz v2, :cond_1

    .line 284
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 286
    :cond_1
    :goto_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    :goto_2
    return-object v0

    .line 277
    :cond_2
    :try_start_7
    const-string v1, "ImageCache"

    const-string v2, "Disk cache miss"

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v2, v0

    .line 283
    :cond_3
    if-eqz v2, :cond_4

    .line 284
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 289
    :cond_4
    :goto_3
    :try_start_9
    monitor-exit v3

    goto :goto_2

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 279
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 280
    :goto_4
    :try_start_a
    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromDiskCache - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 283
    if-eqz v2, :cond_4

    .line 284
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .line 286
    :catch_2
    move-exception v1

    goto :goto_3

    .line 282
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 283
    :goto_5
    if-eqz v2, :cond_5

    .line 284
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 286
    :cond_5
    :goto_6
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 282
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 279
    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public a()V
    .locals 6

    .prologue
    .line 157
    iget-object v1, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v0}, Lcom/etermax/tools/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget-object v0, v0, Lcom/etermax/tools/d/h;->c:Ljava/io/File;

    .line 160
    iget-object v2, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget-boolean v2, v2, Lcom/etermax/tools/d/h;->g:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 164
    :cond_1
    invoke-static {v0}, Lcom/etermax/tools/d/g;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget v4, v4, Lcom/etermax/tools/d/h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 166
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget v4, v4, Lcom/etermax/tools/d/h;->b:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/etermax/tools/d/a;->a(Ljava/io/File;IIJ)Lcom/etermax/tools/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    .line 168
    const-string v0, "ImageCache"

    const-string v2, "Disk cache initialized"

    invoke-static {v0, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/etermax/tools/d/g;->f:Z

    .line 178
    iget-object v0, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v2, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/etermax/tools/d/h;->c:Ljava/io/File;

    .line 172
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDiskCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 188
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/d/g;->c:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/tools/d/g;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/etermax/tools/d/g;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    if-eqz v0, :cond_4

    .line 200
    invoke-static {p1}, Lcom/etermax/tools/d/g;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 201
    const/4 v0, 0x0

    .line 203
    :try_start_1
    iget-object v3, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v3, v1}, Lcom/etermax/tools/d/a;->a(Ljava/lang/String;)Lcom/etermax/tools/d/e;

    move-result-object v3

    .line 204
    if-nez v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v3, v1}, Lcom/etermax/tools/d/a;->b(Ljava/lang/String;)Lcom/etermax/tools/d/b;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_3

    .line 207
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/etermax/tools/d/b;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 208
    :try_start_2
    iget-object v3, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget-object v3, v3, Lcom/etermax/tools/d/h;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/etermax/tools/d/g;->d:Lcom/etermax/tools/d/h;

    iget v4, v4, Lcom/etermax/tools/d/h;->e:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 210
    invoke-virtual {v1}, Lcom/etermax/tools/d/b;->a()V

    .line 211
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 222
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 223
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 228
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 214
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Lcom/etermax/tools/d/e;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 217
    :goto_3
    :try_start_6
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 222
    if-eqz v1, :cond_4

    .line 223
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 225
    :catch_1
    move-exception v0

    goto :goto_2

    .line 218
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 219
    :goto_4
    :try_start_8
    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 222
    if-eqz v1, :cond_4

    .line 223
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 225
    :catch_3
    move-exception v0

    goto :goto_2

    .line 221
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 222
    :goto_5
    if-eqz v1, :cond_6

    .line 223
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 225
    :cond_6
    :goto_6
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 221
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 218
    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 216
    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public b()V
    .locals 5

    .prologue
    .line 349
    iget-object v1, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v0}, Lcom/etermax/tools/d/a;->b()V

    .line 353
    const-string v0, "ImageCache"

    const-string v2, "Disk cache flushed"

    invoke-static {v0, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 360
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 300
    invoke-static {p1}, Lcom/etermax/tools/d/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/etermax/tools/d/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/etermax/tools/d/g;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    goto :goto_0

    .line 307
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 309
    :try_start_3
    iget-object v2, p0, Lcom/etermax/tools/d/g;->b:Lcom/etermax/tools/d/a;

    invoke-virtual {v2, v0}, Lcom/etermax/tools/d/a;->c(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v1

    .line 315
    return-void

    .line 310
    :catch_1
    move-exception v0

    .line 311
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapFromDiskCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
