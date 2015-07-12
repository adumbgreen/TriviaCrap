.class final Lorg/b/c/a/l;
.super Lorg/b/c/a/d;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/HttpResponse;

.field private b:Lorg/b/c/c;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/b/c/a/d;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    .line 46
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/b/c/c;
    .locals 6

    .prologue
    .line 57
    iget-object v0, p0, Lorg/b/c/a/l;->b:Lorg/b/c/c;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/b/c/c;

    invoke-direct {v0}, Lorg/b/c/c;-><init>()V

    iput-object v0, p0, Lorg/b/c/a/l;->b:Lorg/b/c/c;

    .line 59
    iget-object v0, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 60
    iget-object v4, p0, Lorg/b/c/a/l;->b:Lorg/b/c/c;

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/b/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/b/c/a/l;->b:Lorg/b/c/c;

    return-object v0
.end method

.method protected g()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/b/c/a/l;->a:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method
