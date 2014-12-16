.class public Leu/janmuller/android/simplecropimage/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput p1, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    .line 43
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    iget v1, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 68
    iget-object v2, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 69
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 70
    iget v1, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 71
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/j;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/j;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    :cond_0
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Leu/janmuller/android/simplecropimage/j;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Leu/janmuller/android/simplecropimage/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method
