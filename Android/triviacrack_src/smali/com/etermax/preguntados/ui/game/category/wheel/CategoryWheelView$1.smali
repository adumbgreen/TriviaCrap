.class Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;
.super Landroid/view/animation/RotateAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(IZ)V
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
    .line 221
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    iput p8, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;->a:F

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
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 223
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;->a:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 224
    const v1, 0x41cdb6db

    add-float/2addr v0, v1

    const v1, 0x424db6db

    rem-float/2addr v0, v1

    .line 225
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4040

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$1;->b:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Z)V

    .line 228
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/animation/RotateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 229
    return-void
.end method
