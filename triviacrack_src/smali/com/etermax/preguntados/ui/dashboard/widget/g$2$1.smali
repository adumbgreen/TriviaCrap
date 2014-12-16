.class Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/widget/g$2;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->d(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->c(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->b(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

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

    .line 87
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->f(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->l(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->h(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/widget/g$2$1;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g$2;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/dashboard/widget/g$2;->a:Lcom/etermax/preguntados/ui/dashboard/widget/g;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/dashboard/widget/g;->m(Lcom/etermax/preguntados/ui/dashboard/widget/g;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    return-void
.end method
