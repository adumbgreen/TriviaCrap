.class public Lcom/etermax/tools/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/a/i;


# instance fields
.field private final a:Lorg/b/c/a/i;

.field private b:[B


# direct methods
.method constructor <init>(Lorg/b/c/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    .line 219
    return-void
.end method


# virtual methods
.method public a()Lorg/b/c/i;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/b/c/c;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->b:[B

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/b/d/e;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/h;->b:[B

    .line 241
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/etermax/tools/a/a/h;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/etermax/tools/a/a/h;->a:Lorg/b/c/a/i;

    invoke-interface {v0}, Lorg/b/c/a/i;->f()V

    .line 246
    return-void
.end method
