.class Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 372
    const v0, 0x3ecccccd

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$5;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Z)V

    .line 375
    :cond_0
    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 376
    return v0
.end method
