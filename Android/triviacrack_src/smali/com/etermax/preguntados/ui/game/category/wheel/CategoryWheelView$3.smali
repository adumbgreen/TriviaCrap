.class Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 280
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->b(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Lcom/etermax/preguntados/ui/game/category/wheel/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView$3;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->d(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/wheel/b;->a(Ljava/lang/Object;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    return-void
.end method
