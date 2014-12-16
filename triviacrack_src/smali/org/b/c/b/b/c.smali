.class public Lorg/b/c/b/b/c;
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
.field private b:Lorg/codehaus/jackson/map/ObjectMapper;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/c/b/b/c;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lorg/b/c/k;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/b/c/b/b/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>(Lorg/b/c/k;)V

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/c/b/b/c;->c:Z

    .line 64
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/b/c/b/b/c;->c(Lorg/b/c/k;)Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lorg/b/c/b/b/c;->c:Z

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "{} && "

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
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
    .line 113
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
    .line 101
    invoke-virtual {p0, p1}, Lorg/b/c/b/b/c;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->canDeserialize(Lorg/codehaus/jackson/type/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/b/c;->a(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 120
    invoke-virtual {p0, p1}, Lorg/b/c/b/b/c;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
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

.method protected b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
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
    .line 107
    iget-object v0, p0, Lorg/b/c/b/b/c;->b:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->canSerialize(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/b/c;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lorg/b/c/k;)Lorg/codehaus/jackson/JsonEncoding;
    .locals 7
    .parameter

    .prologue
    .line 175
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 177
    invoke-static {}, Lorg/codehaus/jackson/JsonEncoding;->values()[Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 178
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    :goto_1
    return-object v0

    .line 177
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 183
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1
.end method
