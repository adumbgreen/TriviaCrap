.class Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;
.super Landroid/view/animation/RotateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(IIZ)V
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;FFIFIFF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    iput p8, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->a:F

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 263
    const v1, 0x41cdb6db

    add-float/2addr v1, v0

    const v2, 0x424db6db

    rem-float/2addr v1, v2

    .line 264
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4040

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->c(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x4239b6db

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Z)V

    .line 266
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$2;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;F)F

    .line 268
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 269
    return-void
.end method
