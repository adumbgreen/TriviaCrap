.class Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Leu/janmuller/android/simplecropimage/j;Z)V
.end annotation


# instance fields
.field final synthetic a:Leu/janmuller/android/simplecropimage/j;

.field final synthetic b:Z

.field final synthetic c:Leu/janmuller/android/simplecropimage/ImageViewTouchBase;


# direct methods
.method constructor <init>(Leu/janmuller/android/simplecropimage/ImageViewTouchBase;Leu/janmuller/android/simplecropimage/j;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->c:Leu/janmuller/android/simplecropimage/ImageViewTouchBase;

    iput-object p2, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->a:Leu/janmuller/android/simplecropimage/j;

    iput-boolean p3, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->c:Leu/janmuller/android/simplecropimage/ImageViewTouchBase;

    iget-object v1, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->a:Leu/janmuller/android/simplecropimage/j;

    iget-boolean v2, p0, Leu/janmuller/android/simplecropimage/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Leu/janmuller/android/simplecropimage/ImageViewTouchBase;->a(Leu/janmuller/android/simplecropimage/j;Z)V

    .line 167
    return-void
.end method
