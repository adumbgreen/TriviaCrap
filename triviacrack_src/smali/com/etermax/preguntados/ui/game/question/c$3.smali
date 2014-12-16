.class Lcom/etermax/preguntados/ui/game/question/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/c;->d()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/etermax/preguntados/ui/game/question/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;Landroid/widget/Button;ILjava/util/List;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->a:Landroid/widget/Button;

    iput p3, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->b:I

    iput-object p4, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const v5, 0x3fa66666

    .line 335
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->b:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->d:Landroid/view/View;

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->c()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 344
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    const/high16 v2, -0x3cf9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 348
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 351
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/etermax/preguntados/ui/game/question/c;->v:Ljava/util/Map;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 355
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->e:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->a:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;Landroid/widget/Button;)V

    .line 331
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$3;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    return-void
.end method
