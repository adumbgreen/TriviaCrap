.class Lcom/admarvel/android/ads/AdMarvelWebView$ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/io/InputStream;

.field d:Landroid/graphics/Bitmap;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelWebView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->c:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->f:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Pictures/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    const-string v4, "/mnt/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->c:Ljava/io/InputStream;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelWebView$ak$2;

    invoke-direct {v4, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$ak$2;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$ak;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    :cond_3
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-nez v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\"NO\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\"NO\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\"NO\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    const-string v4, "https:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/admarvel/android/ads/AdMarvelWebView$ak$1;

    invoke-direct {v4, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$ak$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$ak;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    :cond_7
    throw v0

    :cond_8
    :try_start_4
    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    const-string v4, "file:///android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "file:///android_asset/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->c:Ljava/io/InputStream;

    goto/16 :goto_1

    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\"YES\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ak;->d:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method
