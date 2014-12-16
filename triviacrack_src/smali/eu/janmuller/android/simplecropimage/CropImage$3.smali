.class Leu/janmuller/android/simplecropimage/CropImage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/janmuller/android/simplecropimage/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Leu/janmuller/android/simplecropimage/CropImage;


# direct methods
.method constructor <init>(Leu/janmuller/android/simplecropimage/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, -0x3d4c

    invoke-static {v1, v2}, Leu/janmuller/android/simplecropimage/k;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->a(Leu/janmuller/android/simplecropimage/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 212
    new-instance v0, Leu/janmuller/android/simplecropimage/j;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->b(Leu/janmuller/android/simplecropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/janmuller/android/simplecropimage/j;-><init>(Landroid/graphics/Bitmap;)V

    .line 213
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v1}, Leu/janmuller/android/simplecropimage/CropImage;->c(Leu/janmuller/android/simplecropimage/CropImage;)Leu/janmuller/android/simplecropimage/CropImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Leu/janmuller/android/simplecropimage/CropImageView;->a(Leu/janmuller/android/simplecropimage/j;Z)V

    .line 214
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$3;->a:Leu/janmuller/android/simplecropimage/CropImage;

    iget-object v0, v0, Leu/janmuller/android/simplecropimage/CropImage;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 215
    return-void
.end method
