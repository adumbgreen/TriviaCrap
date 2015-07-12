.class Lcom/etermax/preguntados/ui/game/question/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/c;->a(ILjava/lang/Integer;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->b:Lcom/etermax/preguntados/ui/game/question/c;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->b:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->b:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->a:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V

    .line 676
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 684
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$5;->b:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->c(Lcom/etermax/preguntados/ui/game/question/c;)V

    .line 685
    return-void
.end method
