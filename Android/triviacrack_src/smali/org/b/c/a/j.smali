.class final Lorg/b/c/a/j;
.super Lorg/b/c/a/a;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final c:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/b/c/a/a;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/b/c/a/j;->a:Lorg/apache/http/client/HttpClient;

    .line 56
    iput-object p2, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 57
    iput-object p3, p0, Lorg/b/c/a/j;->c:Lorg/apache/http/protocol/HttpContext;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/c;[B)Lorg/b/c/a/i;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/b/c/c;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    iget-object v4, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 80
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 81
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lorg/b/c/a/j;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lorg/b/c/a/j;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 84
    new-instance v1, Lorg/b/c/a/l;

    invoke-direct {v1, v0}, Lorg/b/c/a/l;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method public b()Lorg/b/c/f;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/b/c/f;->valueOf(Ljava/lang/String;)Lorg/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/b/c/a/j;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
