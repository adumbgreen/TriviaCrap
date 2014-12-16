.class public Lorg/b/c/b/j;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/b/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/charset/Charset;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/c/b/j;-><init>(Ljava/nio/charset/Charset;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lorg/b/c/b/j;-><init>(Ljava/nio/charset/Charset;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/b/c/k;

    const/4 v1, 0x0

    new-instance v2, Lorg/b/c/k;

    const-string v3, "text"

    const-string v4, "plain"

    invoke-direct {v2, v3, v4, p1}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    aput-object v2, v0, v1

    sget-object v1, Lorg/b/c/k;->a:Lorg/b/c/k;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>([Lorg/b/c/k;)V

    .line 50
    iput-boolean v5, p0, Lorg/b/c/b/j;->c:Z

    .line 77
    iput-object p1, p0, Lorg/b/c/b/j;->a:Ljava/nio/charset/Charset;

    .line 78
    iput-object p2, p0, Lorg/b/c/b/j;->b:Ljava/util/List;

    .line 79
    return-void
.end method

.method private c(Lorg/b/c/k;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/b/c/b/j;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/j;->a(Ljava/lang/String;Lorg/b/c/k;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lorg/b/c/b/j;->c(Lorg/b/c/k;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 114
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/j;->a(Ljava/lang/String;Lorg/b/c/g;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/b/c/g;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/b/c/b/j;->c:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/b/c/b/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/b/c/c;->b(Ljava/util/List;)V

    .line 126
    :cond_0
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/c/b/j;->c(Lorg/b/c/k;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p1, v1}, Lorg/b/d/e;->a(Ljava/lang/String;Ljava/io/Writer;)V

    .line 128
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/b/c/b/j;->c:Z

    .line 97
    return-void
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
    .line 101
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/j;->c(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/b/c/b/j;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected c(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/String;",
            ">;",
            "Lorg/b/c/d;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/c/b/j;->c(Lorg/b/c/k;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/b/d/e;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/b/c/b/j;->b:Ljava/util/List;

    return-object v0
.end method
