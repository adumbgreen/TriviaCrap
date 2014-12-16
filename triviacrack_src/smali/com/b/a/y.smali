.class Lcom/b/a/y;
.super Lcom/b/a/d;
.source "SourceFile"


# instance fields
.field o:I

.field private final p:Lcom/b/a/o;


# direct methods
.method public constructor <init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;Lcom/b/a/o;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/b/a/d;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 41
    iput-object p6, p0, Lcom/b/a/y;->p:Lcom/b/a/o;

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/b/a/y;->o:I

    .line 43
    iget-object v0, p1, Lcom/b/a/aa;->c:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/b/a/au;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/y$1;

    invoke-direct {v1, p0}, Lcom/b/a/y$1;-><init>(Lcom/b/a/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 101
    new-instance v0, Lcom/b/a/v;

    invoke-direct {v0, p1}, Lcom/b/a/v;-><init>(Ljava/io/InputStream;)V

    .line 104
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/v;->a(I)J

    move-result-wide v1

    .line 106
    invoke-static {p2}, Lcom/b/a/y;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 107
    invoke-static {v3}, Lcom/b/a/y;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 109
    invoke-static {v0}, Lcom/b/a/au;->c(Ljava/io/InputStream;)Z

    move-result v5

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/b/a/v;->a(J)V

    .line 113
    if-eqz v5, :cond_2

    .line 114
    invoke-static {v0}, Lcom/b/a/au;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 115
    if-eqz v4, :cond_0

    .line 116
    array-length v1, v0

    invoke-static {v0, v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    iget v1, p2, Lcom/b/a/ai;->f:I

    iget v2, p2, Lcom/b/a/ai;->g:I

    invoke-static {v1, v2, v3}, Lcom/b/a/y;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 119
    :cond_0
    array-length v1, v0

    invoke-static {v0, v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :cond_1
    return-object v0

    .line 121
    :cond_2
    if-eqz v4, :cond_3

    .line 122
    invoke-static {v0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 123
    iget v4, p2, Lcom/b/a/ai;->f:I

    iget v5, p2, Lcom/b/a/ai;->g:I

    invoke-static {v4, v5, v3}, Lcom/b/a/y;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/b/a/v;->a(J)V

    .line 127
    :cond_3
    invoke-static {v0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 53
    iget v0, p0, Lcom/b/a/y;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/b/a/y;->p:Lcom/b/a/o;

    iget-object v3, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Lcom/b/a/o;->a(Landroid/net/Uri;Z)Lcom/b/a/p;

    move-result-object v2

    .line 56
    if-nez v2, :cond_2

    move-object v0, v1

    .line 83
    :cond_0
    :goto_1
    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v0, v2, Lcom/b/a/p;->c:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    :goto_2
    iput-object v0, p0, Lcom/b/a/y;->l:Lcom/b/a/ae;

    .line 62
    invoke-virtual {v2}, Lcom/b/a/p;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/b/a/p;->a()Ljava/io/InputStream;

    move-result-object v3

    .line 68
    if-nez v3, :cond_4

    move-object v0, v1

    .line 69
    goto :goto_1

    .line 60
    :cond_3
    sget-object v0, Lcom/b/a/ae;->c:Lcom/b/a/ae;

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v2}, Lcom/b/a/p;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 74
    invoke-static {v3}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/b/a/y;->l:Lcom/b/a/ae;

    sget-object v1, Lcom/b/a/ae;->c:Lcom/b/a/ae;

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/b/a/p;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 78
    iget-object v0, p0, Lcom/b/a/y;->d:Lcom/b/a/am;

    invoke-virtual {v2}, Lcom/b/a/p;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/am;->a(J)V

    .line 81
    :cond_6
    :try_start_0
    invoke-direct {p0, v3, p1}, Lcom/b/a/y;->a(Ljava/io/InputStream;Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    invoke-static {v3}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 88
    iget v2, p0, Lcom/b/a/y;->o:I

    if-lez v2, :cond_1

    move v2, v1

    .line 89
    :goto_0
    if-nez v2, :cond_2

    .line 93
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 88
    goto :goto_0

    .line 92
    :cond_2
    iget v2, p0, Lcom/b/a/y;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/y;->o:I

    .line 93
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method f()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
