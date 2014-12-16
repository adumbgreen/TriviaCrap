.class Lcom/etermax/preguntados/ui/game/category/wheel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput p2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->d:I

    .line 324
    const/16 v0, 0xfa

    div-int/2addr v0, p4

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->c:I

    .line 325
    iput-boolean p3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->e:Z

    .line 326
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)I

    move-result v1

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->d:I

    iget-boolean v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IIZ)V

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string v0, "CategoryWheelView"

    const-string v1, "Wheel TimeOut!"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->d:I

    iget-boolean v3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IIZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 335
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->b:I

    .line 336
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->e(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->c:I

    if-lt v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->f(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;)Landroid/view/animation/RotateAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 339
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/c;->b:I

    .line 331
    return-void
.end method
