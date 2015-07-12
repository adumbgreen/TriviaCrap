.class Leu/janmuller/android/simplecropimage/CropImage$1;
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
    .line 190
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage$1;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$1;->a:Leu/janmuller/android/simplecropimage/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/janmuller/android/simplecropimage/CropImage;->setResult(I)V

    .line 194
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$1;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    .line 195
    return-void
.end method
