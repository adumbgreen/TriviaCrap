.class public Lcom/admarvel/android/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/admarvel/android/b/c;

.field private c:Ljava/net/URL;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/b/c$b;->a:Z

    iput-object p2, p0, Lcom/admarvel/android/b/c$b;->c:Ljava/net/URL;

    iput-object p3, p0, Lcom/admarvel/android/b/c$b;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/admarvel/android/b/c$b;->f:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/admarvel/android/b/c;Ljava/net/URL;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/b/c$b;->a:Z

    iput-object p2, p0, Lcom/admarvel/android/b/c$b;->c:Ljava/net/URL;

    iput-object p3, p0, Lcom/admarvel/android/b/c$b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/b/c$b;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->c:Ljava/net/URL;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/admarvel/android/b/c$b;->c:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v2, "gzip"

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/b/c$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline SDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/admarvel/android/b/c$b;->a:Z

    :cond_0
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/b/c$b;->a:Z

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/admarvel/android/b/c$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c$b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admarvel/android/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/admarvel/android/b/c$b;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->b(Lcom/admarvel/android/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    const-string v2, "/complete_ad_content_path_list"

    const-string v3, "/complete_ad_content_path_list"

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->b(Lcom/admarvel/android/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->b(Lcom/admarvel/android/b/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/admarvel/android/b/c$b;->a:Z

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    invoke-static {v0}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "admarvel_preferences"

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_6

    const-string v0, "Offline SDK:package cannot be downloaded shared preference is null "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/admarvel/android/b/c;->a(Z)Z

    invoke-static {v5}, Lcom/admarvel/android/b/c;->b(Z)Z

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/b/c$b;->b:Lcom/admarvel/android/b/c;

    const-string v2, "-1"

    invoke-static {v1, v0, v2}, Lcom/admarvel/android/b/c;->a(Lcom/admarvel/android/b/c;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Offline SDK:package cannot be downloaded because internet is not available "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/admarvel/android/b/c;->a(Z)Z

    invoke-static {v5}, Lcom/admarvel/android/b/c;->b(Z)Z

    goto/16 :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method
