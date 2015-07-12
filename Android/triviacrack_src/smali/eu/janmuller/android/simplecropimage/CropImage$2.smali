.class Leu/janmuller/android/simplecropimage/CropImage$2;
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
    .line 198
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/CropImage$2;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$2;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-static {v0}, Leu/janmuller/android/simplecropimage/CropImage;->a(Leu/janmuller/android/simplecropimage/CropImage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/CropImage$2;->a:Leu/janmuller/android/simplecropimage/CropImage;

    invoke-virtual {v0}, Leu/janmuller/android/simplecropimage/CropImage;->finish()V

    goto :goto_0
.end method
