.class Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;
.super Landroid/view/animation/LinearInterpolator;
.source "SourceFile"


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
    .line 355
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter

    .prologue
    .line 358
    .line 359
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$4;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Z)V

    .line 360
    return p1
.end method
