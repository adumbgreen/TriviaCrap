.class public Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;
.super Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field b:Lcom/etermax/preguntados/c/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 44
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/ui/game/duelmode/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/duelmode/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/game/duelmode/a;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/a;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/etermax/o;->random_challenge:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 11

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/a/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->a()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v7

    invoke-interface {v7}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v7

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v10}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/etermax/preguntados/ui/game/a/c;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/c;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/a/c;->e()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Lcom/etermax/preguntados/datasource/dto/enums/Vote;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/a/c;->a(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->j()V

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->k()V

    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/a/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->y()V

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->a()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v7

    invoke-interface {v7}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v7

    iget-object v10, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v10}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/etermax/preguntados/ui/game/a/c;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0, v9}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->y()V

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->g()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/a/c;->a(Ljava/util/ArrayList;)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->y()V

    .line 87
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 89
    return-void
.end method

.method public a(Ljava/util/ArrayList;JLcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;J",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->l:Lcom/etermax/preguntados/e/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 53
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->setMediaType(Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;)V

    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 113
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 136
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 139
    new-instance v4, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v4}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 140
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 141
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 142
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 143
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->g:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getQuestionTime()I

    move-result v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setFinishTime(Ljava/lang/Long;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 148
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 119
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/etermax/preguntados/ui/game/a/c;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/a/c;->e()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/preguntados/ui/game/duelmode/g;ILjava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 74
    sget v0, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->leave_duel:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_duel_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 79
    return-void
.end method
