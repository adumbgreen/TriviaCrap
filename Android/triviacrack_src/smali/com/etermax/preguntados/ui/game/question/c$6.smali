.class Lcom/etermax/preguntados/ui/game/question/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/etermax/preguntados/ui/game/question/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->c:Lcom/etermax/preguntados/ui/game/question/c;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->c:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->d(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->c:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/c$6;->c:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v4, v4, Lcom/etermax/preguntados/ui/game/question/c;->u:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/d;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    .line 707
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    return-void
.end method
