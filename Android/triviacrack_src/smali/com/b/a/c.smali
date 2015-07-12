.class Lcom/b/a/c;
.super Lcom/b/a/d;
.source "SourceFile"


# static fields
.field private static final o:I


# instance fields
.field private final p:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "file:///android_asset/"

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/b/a/c;->o:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c;->p:Landroid/content/res/AssetManager;

    .line 24
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p1, Lcom/b/a/ai;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/b/a/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/b/a/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/b/a/c;->f:Lcom/b/a/ai;

    invoke-static {v0}, Lcom/b/a/c;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/b/a/c;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/b/a/c;->p:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 41
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    .line 45
    iget-object v1, p0, Lcom/b/a/c;->f:Lcom/b/a/ai;

    iget v1, v1, Lcom/b/a/ai;->f:I

    iget-object v2, p0, Lcom/b/a/c;->f:Lcom/b/a/ai;

    iget v2, v2, Lcom/b/a/ai;->g:I

    invoke-static {v1, v2, v0}, Lcom/b/a/c;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/b/a/c;->p:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 51
    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0

    .line 51
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method a()Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    return-object v0
.end method
