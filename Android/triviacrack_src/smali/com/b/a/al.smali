.class Lcom/b/a/al;
.super Lcom/b/a/d;
.source "SourceFile"


# instance fields
.field private final o:Landroid/content/Context;


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
    .line 31
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/b/a/d;-><init>(Lcom/b/a/aa;Lcom/b/a/k;Lcom/b/a/e;Lcom/b/a/am;Lcom/b/a/a;)V

    .line 32
    iput-object p1, p0, Lcom/b/a/al;->o:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Landroid/content/res/Resources;ILcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p3}, Lcom/b/a/al;->c(Lcom/b/a/ai;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/b/a/al;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    iget v1, p3, Lcom/b/a/ai;->f:I

    iget v2, p3, Lcom/b/a/ai;->g:I

    invoke-static {v1, v2, v0}, Lcom/b/a/al;->a(IILandroid/graphics/BitmapFactory$Options;)V

    .line 51
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/b/a/ai;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/b/a/al;->o:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/b/a/au;->a(Landroid/content/Context;Lcom/b/a/ai;)Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lcom/b/a/au;->a(Landroid/content/res/Resources;Lcom/b/a/ai;)I

    move-result v1

    .line 38
    invoke-direct {p0, v0, v1, p1}, Lcom/b/a/al;->a(Landroid/content/res/Resources;ILcom/b/a/ai;)Landroid/graphics/Bitmap;

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
