.class public Lorg/b/c/b/b/a;
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
.field private b:Lcom/google/gson/Gson;

.field private c:Ljava/lang/reflect/Type;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/c/b/b/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0, v0}, Lorg/b/c/b/b/a;-><init>(Lcom/google/gson/Gson;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    new-instance v0, Lorg/b/c/k;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/b/c/b/b/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>(Lorg/b/c/k;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/c/b/b/a;->c:Ljava/lang/reflect/Type;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/b/c/b/b/a;->d:Z

    .line 79
    invoke-virtual {p0, p1}, Lorg/b/c/b/b/a;->a(Lcom/google/gson/Gson;)V

    .line 80
    return-void
.end method

.method private a(Lorg/b/c/c;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter

    .prologue
    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/b/c/b/b/a;->a:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/Gson;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    const-string v0, "\'gson\' must not be null"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lorg/b/c/b/b/a;->b:Lcom/google/gson/Gson;

    .line 93
    return-void
.end method

.method protected a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/b/c/b/b/a;->a(Lorg/b/c/c;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lorg/b/c/b/b/a;->d:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "{} && "

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/b/c/b/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    iget-object v2, p0, Lorg/b/c/b/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 167
    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 171
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lorg/b/c/b/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Lorg/b/c/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->getMessage()Ljava/lang/String;

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
    .line 126
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
    .line 115
    invoke-virtual {p0, p2}, Lorg/b/c/b/b/a;->a(Lorg/b/c/k;)Z

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
            "<*>;",
            "Lorg/b/c/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/b/c/b/b/a;->a(Lorg/b/c/c;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lorg/b/c/b/b/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    iget-object v2, p0, Lorg/b/c/b/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/b/c/b/b/a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :catch_2
    move-exception v0

    .line 147
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/b/c/b/b/a;->c:Ljava/lang/reflect/Type;

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
    .line 120
    invoke-virtual {p0, p2}, Lorg/b/c/b/b/a;->b(Lorg/b/c/k;)Z

    move-result v0

    return v0
.end method
