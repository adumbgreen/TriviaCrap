.class public Lorg/b/c/b/c/b;
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
.field private b:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/c/b/c/b;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-direct {p0, v0}, Lorg/b/c/b/c/b;-><init>(Lorg/simpleframework/xml/Serializer;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/Serializer;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/b/c/k;

    const/4 v1, 0x0

    sget-object v2, Lorg/b/c/k;->h:Lorg/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/b/c/k;->p:Lorg/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/b/c/k;->i:Lorg/b/c/k;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>([Lorg/b/c/k;)V

    .line 71
    invoke-virtual {p0, p1}, Lorg/b/c/b/c/b;->a(Lorg/simpleframework/xml/Serializer;)V

    .line 72
    return-void
.end method

.method private a(Lorg/b/c/c;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/b/c/b/c/b;->a:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/b/c/b/c/b;->a(Lorg/b/c/c;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/b/c/b/c/b;->b:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lorg/b/c/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lorg/simpleframework/xml/Serializer;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const-string v0, "\'serializer\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lorg/b/c/b/c/b;->b:Lorg/simpleframework/xml/Serializer;

    .line 84
    return-void
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
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Class;Lorg/b/c/k;)Z
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
    .line 88
    invoke-virtual {p0, p2}, Lorg/b/c/b/c/b;->a(Lorg/b/c/k;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/b/c/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/b/c/b/c/b;->a(Lorg/b/c/c;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/b/c/b/c/b;->b:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lorg/b/a/c;

    invoke-direct {v1, v0, p1}, Lorg/b/a/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read ["

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

    .line 113
    :cond_0
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
    .line 93
    const-class v0, Lorg/simpleframework/xml/Root;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/c/b;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
