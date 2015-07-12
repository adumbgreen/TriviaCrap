.class public Lorg/b/c/b/c/c;
.super Lorg/b/c/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/xml/transform/Source;",
        ">",
        "Lorg/b/c/b/c/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/b/c/b/c/a;-><init>()V

    .line 115
    return-void
.end method

.method private a(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .parameter

    .prologue
    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v1}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 87
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Ljavax/xml/transform/Source;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Lorg/b/c/k;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljavax/xml/transform/Source;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/k;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    new-instance v1, Lorg/b/c/b/c/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/b/c/b/c/d;-><init>(Lorg/b/c/b/c/c$1;)V

    .line 95
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 96
    invoke-static {v1}, Lorg/b/c/b/c/d;->a(Lorg/b/c/b/c/d;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Class;Lorg/b/c/c;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lorg/b/c/b/c/c;->b(Ljava/lang/Class;Lorg/b/c/c;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/c;Ljavax/xml/transform/Result;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    check-cast p1, Ljavax/xml/transform/Source;

    invoke-virtual {p0, p1, p2, p3}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Lorg/b/c/c;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method protected a(Ljavax/xml/transform/Source;Lorg/b/c/c;Ljavax/xml/transform/Result;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/c;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lorg/b/c/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not transform ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/Source;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Class;Lorg/b/c/c;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 4
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 60
    :try_start_0
    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v1}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    .line 62
    invoke-virtual {p0, p3, v1}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 63
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 71
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-class v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0, p3}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 67
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not transform from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_1
    :try_start_1
    const-class v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljavax/xml/transform/Source;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_2
    invoke-direct {p0, p3}, Lorg/b/c/b/c/c;->a(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 71
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lorg/b/c/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Only DOMSource, SAXSource, and StreamSource are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/b/c/b/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
.end method
