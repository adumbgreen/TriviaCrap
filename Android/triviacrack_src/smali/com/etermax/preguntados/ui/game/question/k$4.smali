.class Lcom/etermax/preguntados/ui/game/question/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field final synthetic d:Lcom/etermax/preguntados/ui/game/question/k;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/k;IILcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->d:Lcom/etermax/preguntados/ui/game/question/k;

    iput p2, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->a:I

    iput p3, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->b:I

    iput-object p4, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 333
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->a:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->d:Lcom/etermax/preguntados/ui/game/question/k;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/ui/game/question/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/l;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/k$4;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/question/l;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    return-void
.end method
