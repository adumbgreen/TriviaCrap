.class Lcom/b/a/i;
.super Lcom/b/a/d;
.source "SourceFile"


# instance fields
.field final o:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 33
    iput-object p1, p0, Lcom/b/a/i;->o:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/b/a/i;->d(Lcom/b/a/ai;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method a()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    return-object v0
.end method

.method protected d(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/b/a/i;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    invoke-static {p1}, Lcom/b/a/i;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/b/a/i;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :try_start_0
    iget-object v3, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 52
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    .line 56
    iget v1, p1, Lcom/b/a/ai;->f:I

    iget v3, p1, Lcom/b/a/ai;->g:I

    invoke-static {v1, v3, v2}, Lcom/b/a/i;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 58
    :cond_0
    iget-object v1, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 62
    invoke-static {v0}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    return-object v1

    .line 54
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0

    .line 62
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v1
.end method
