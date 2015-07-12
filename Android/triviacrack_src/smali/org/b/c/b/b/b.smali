.class public Lorg/b/c/b/b/b;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/b/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# instance fields
.field private b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/c/b/b/b;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/b/c/k;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/b/c/b/b/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>(Lorg/b/c/k;)V

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/c/b/b/b;->c:Z

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/b/c/b/b/b;->c(Lorg/b/c/k;)Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lorg/b/c/b/b/b;->c:Z

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "{} && "

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Lorg/b/c/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Ljava/lang/Class;)Z
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
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/b/c/k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/b/c/b/b/b;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->canDeserialize(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/b/b;->a(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/b/c/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lorg/b/c/b/b/b;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/b/c/k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/b/c/b/b/b;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->canSerialize(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/b/b;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lorg/b/c/k;)Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 7
    .parameter

    .prologue
    .line 176
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonEncoding;->values()[Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 179
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    :goto_1
    return-object v0

    .line 178
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_1
.end method
