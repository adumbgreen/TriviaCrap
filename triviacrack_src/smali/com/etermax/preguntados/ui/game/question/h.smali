.class public Lcom/etermax/preguntados/ui/game/question/h;
.super Lcom/etermax/preguntados/ui/game/question/c;
.source "SourceFile"


# instance fields
.field w:Ljava/lang/String;

.field x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/c;-><init>()V

    return-void
.end method

.method public static a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/etermax/preguntados/datasource/dto/enums/SpinType;",
            "Ljava/lang/String;",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/i;->i()Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/question/j;->a(J)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/j;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/question/j;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    sget v1, Lcom/etermax/f;->challenge_color:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/question/j;->a(I)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/etermax/preguntados/ui/game/question/j;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/etermax/preguntados/ui/game/question/j;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/etermax/preguntados/ui/game/question/j;->c(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/etermax/preguntados/ui/game/question/j;->b(Ljava/lang/String;)Lcom/etermax/preguntados/ui/game/question/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/j;->a()Lcom/etermax/preguntados/ui/game/question/h;

    move-result-object v0

    .line 37
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Ljava/lang/Integer;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/h;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/h;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerButton"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/h;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 62
    sget v1, Lcom/etermax/i;->opponent_image:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 6

    .prologue
    .line 42
    invoke-super {p0}, Lcom/etermax/preguntados/ui/game/question/c;->d()V

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/h;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getAnswers()Ljava/util/List;

    move-result-object v2

    .line 45
    new-instance v3, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v3}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/h;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answerButton"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 50
    sget v4, Lcom/etermax/i;->opponent_image:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 51
    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/h;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/question/h;->x:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
