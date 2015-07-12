.class Lcom/etermax/preguntados/ui/game/category/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/category/wheel/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/category/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/i;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/ui/game/category/i;Z)Z

    .line 389
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Z)V

    .line 390
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->e(Lcom/etermax/preguntados/ui/game/category/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->e:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->e:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 392
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 393
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->c(Lcom/etermax/preguntados/ui/game/category/i;Z)Z

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->f(Lcom/etermax/preguntados/ui/game/category/i;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 372
    if-eqz p1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    move-object v0, p1

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, v1, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 374
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_1

    .line 375
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->charges_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;

    .line 376
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryChargesView;->setCharges(I)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0, v2}, Lcom/etermax/preguntados/ui/game/category/i;->b(Lcom/etermax/preguntados/ui/game/category/i;Z)Z

    .line 382
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->d(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    invoke-interface {v0, v2}, Lcom/etermax/preguntados/ui/game/category/j;->a(Z)V

    .line 384
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->c(Lcom/etermax/preguntados/ui/game/category/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/j;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/j;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 379
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/game/category/i;->g(Lcom/etermax/preguntados/ui/game/category/i;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 401
    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/category/i;->h(Lcom/etermax/preguntados/ui/game/category/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->e:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->D:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 403
    if-eqz p1, :cond_1

    sget v0, Lcom/etermax/b;->spin_button_rotation_clockwise:I

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/category/i;->j:Lcom/etermax/preguntados/ui/a/a;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/category/i;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/etermax/preguntados/ui/a/a;->a(Landroid/view/View;I)V

    .line 405
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$3;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;J)J

    .line 407
    :cond_0
    return-void

    .line 403
    :cond_1
    sget v0, Lcom/etermax/b;->spin_button_rotation_counter_clockwise:I

    goto :goto_0
.end method
