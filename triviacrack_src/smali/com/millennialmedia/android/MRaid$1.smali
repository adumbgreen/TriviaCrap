.class final Lcom/millennialmedia/android/MRaid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MRaid;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/MRaid$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    const-string v0, "MRaid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS -  download start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 118
    const-string v1, "MRaid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMJS -  download finish ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/millennialmedia/android/MRaid$1;->b:Landroid/content/Context;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MRaid;->a(Landroid/content/Context;Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/millennialmedia/android/MRaid$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MRaid;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "MRaid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMJS -  download saved ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MRaid$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    if-eqz v0, :cond_1

    .line 135
    :goto_0
    invoke-interface {v0}, Lcom/millennialmedia/android/MRaid$Finished;->finished()V

    .line 139
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_1
    const-string v1, "MRaid"

    const-string v2, "Mraid download exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    :try_start_2
    const-string v1, "MRaid"

    const-string v2, "Mraid download exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    if-eqz v0, :cond_1

    goto :goto_0

    .line 129
    :catch_2
    move-exception v0

    .line 130
    :try_start_3
    const-string v1, "MRaid"

    const-string v2, "Mraid download exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 133
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/millennialmedia/android/MRaid;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MRaid$Finished;

    .line 134
    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v0}, Lcom/millennialmedia/android/MRaid$Finished;->finished()V

    .line 132
    :cond_2
    throw v1
.end method
