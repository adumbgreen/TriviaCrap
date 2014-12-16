.class Lcom/smartadserver/android/library/b/b$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/b/b;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/b/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/b;->a(Lcom/smartadserver/android/library/b/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/b/b;->a(Lcom/smartadserver/android/library/b/b;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/b;->b(Lcom/smartadserver/android/library/b/b;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    iget-object v0, v0, Lcom/smartadserver/android/library/b/b;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The ad connection timed out after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->b(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/b;->c(Lcom/smartadserver/android/library/b/b;)Lcom/smartadserver/android/library/b/d;

    move-result-object v0

    new-instance v2, Lcom/smartadserver/android/library/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad was not delivered before specified timeout ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartadserver/android/library/b/b$2;->a:Lcom/smartadserver/android/library/b/b;

    iget-object v4, v4, Lcom/smartadserver/android/library/b/b;->b:Lcom/smartadserver/android/library/b/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/b/a;->a(Lcom/smartadserver/android/library/b/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartadserver/android/library/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/smartadserver/android/library/b/d;->a(Ljava/lang/Exception;)V

    .line 179
    :cond_0
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
