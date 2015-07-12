.class public abstract Lorg/b/c/b/c/a;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/b/c/b/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/b/c/k;

    const/4 v1, 0x0

    sget-object v2, Lorg/b/c/k;->h:Lorg/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/b/c/k;->p:Lorg/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/b/c/k;

    const-string v3, "application"

    const-string v4, "*+xml"

    invoke-direct {v2, v3, v4}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>([Lorg/b/c/k;)V

    .line 48
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/b/c/a;->a:Ljavax/xml/transform/TransformerFactory;

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Class;Lorg/b/c/c;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/b/c/c;",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Lorg/b/c/c;Ljavax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/c;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/b/c/b/c/a;->a(Ljava/lang/Object;Lorg/b/c/c;Ljavax/xml/transform/Result;)V

    .line 68
    return-void
.end method

.method protected a(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/b/c/b/c/a;->a:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 78
    return-void
.end method

.method public final b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/b/c/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/b/c/b/c/a;->a(Ljava/lang/Class;Lorg/b/c/c;Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
