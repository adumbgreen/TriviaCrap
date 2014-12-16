.class Lcom/smartadserver/android/library/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/b/e;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic b:Z

.field final synthetic c:Lcom/smartadserver/android/library/b/e;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/b/e;Lorg/apache/http/client/methods/HttpGet;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    iput-object p2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    iput-boolean p3, p0, Lcom/smartadserver/android/library/b/e$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 259
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartadserver/android/library/b/e$3;->b:Z

    if-eqz v0, :cond_4

    .line 260
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry to call url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/b/e;->a(Lcom/smartadserver/android/library/b/e;Lorg/apache/http/client/methods/HttpGet;)V

    .line 266
    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-static {v1}, Lcom/smartadserver/android/library/b/e;->b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/b/e;->a()V

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 256
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_3
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call URL (retries limit reached): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully called URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$3;->c:Lcom/smartadserver/android/library/b/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->b(Lcom/smartadserver/android/library/b/e;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/b/e$3;->a:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method
