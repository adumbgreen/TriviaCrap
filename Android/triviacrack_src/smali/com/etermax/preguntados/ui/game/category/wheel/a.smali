.class Lcom/etermax/preguntados/ui/game/category/wheel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->b:I

    .line 302
    iput-boolean p3, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->c:Z

    .line 303
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->a:Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->b:I

    iget-boolean v2, p0, Lcom/etermax/preguntados/ui/game/category/wheel/a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;->a(Lcom/etermax/preguntados/ui/game/category/wheel/CategoryWheelView;IZ)V

    .line 308
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    return-void
.end method
