.class Lcom/etermax/preguntados/ui/dashboard/widget/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/dashboard/widget/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/widget/g;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/g;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a(Lcom/etermax/preguntados/ui/dashboard/widget/g;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a(Lcom/etermax/preguntados/ui/dashboard/widget/g;I)I

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->i(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/g$1$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/g$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->d(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v3}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->a(Lcom/etermax/preguntados/ui/dashboard/widget/g;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    return-void
.end method
