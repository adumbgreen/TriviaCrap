.class public Lorg/b/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private c(Lorg/b/c/a/i;)[B
    .locals 1
    .parameter

    .prologue
    .line 86
    :try_start_0
    invoke-interface {p1}, Lorg/b/c/a/i;->e()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lorg/b/d/e;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/b/c/a/i;)V
    .locals 5
    .parameter

    .prologue
    .line 70
    invoke-interface {p1}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v1

    .line 71
    invoke-interface {p1}, Lorg/b/c/a/i;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 73
    :goto_0
    invoke-direct {p0, p1}, Lorg/b/e/a/a;->c(Lorg/b/c/a/i;)[B

    move-result-object v2

    .line 74
    sget-object v3, Lorg/b/e/a/a$1;->a:[I

    invoke-virtual {v1}, Lorg/b/c/i;->c()Lorg/b/c/j;

    move-result-object v4

    invoke-virtual {v4}, Lorg/b/c/j;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 80
    new-instance v0, Lorg/b/e/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status code ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/b/e/a/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :pswitch_0
    new-instance v3, Lorg/b/e/a/b;

    invoke-interface {p1}, Lorg/b/c/a/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2, v0}, Lorg/b/e/a/b;-><init>(Lorg/b/c/i;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    throw v3

    .line 78
    :pswitch_1
    new-instance v3, Lorg/b/e/a/d;

    invoke-interface {p1}, Lorg/b/c/a/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2, v0}, Lorg/b/e/a/d;-><init>(Lorg/b/c/i;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    throw v3

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lorg/b/c/i;)Z
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/b/c/i;->c()Lorg/b/c/j;

    move-result-object v0

    sget-object v1, Lorg/b/c/j;->d:Lorg/b/c/j;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/b/c/i;->c()Lorg/b/c/j;

    move-result-object v0

    sget-object v1, Lorg/b/c/j;->e:Lorg/b/c/j;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/b/c/a/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/b/c/a/i;->a()Lorg/b/c/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/b/e/a/a;->a(Lorg/b/c/i;)Z

    move-result v0

    return v0
.end method
