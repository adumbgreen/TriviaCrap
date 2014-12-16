.class Leu/janmuller/android/simplecropimage/CropImage$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/janmuller/android/simplecropimage/CropImage;->b()V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Leu/janmuller/android/simplecropimage/CropImage;


# direct methods
.method constructor <init>(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->b:Leu/janmuller/android/simplecropimage/CropImage;

    iput-object p2, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->b:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->e(Leu/janmuller/android/simplecropimage/CropImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->b:Leu/janmuller/android/simplecropimage/CropImage;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->b:Leu/janmuller/android/simplecropimage/CropImage;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$6;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
