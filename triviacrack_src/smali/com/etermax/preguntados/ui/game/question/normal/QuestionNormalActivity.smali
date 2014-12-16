.class public Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;
.super Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:Lcom/etermax/preguntados/ui/d/i;

.field b:Lcom/etermax/preguntados/c/a/b;

.field private q:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mCoins"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IILcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mGameDTO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mCoins"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mPowerUpFree"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "dialogAcceptButtonListener"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    sget v1, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->resign_question:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_question"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 9

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v5, v2, v3}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->a(J)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->c(J)V

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v6, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    iget v6, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->d:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-static/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V
    .locals 6
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
    .line 145
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 150
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 151
    invoke-virtual {v3, p3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 152
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 154
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v3, p4}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setPowerUps(Ljava/util/List;)V

    .line 156
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 157
    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v0

    sub-int v0, v5, v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->d:I

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setType(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 164
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 167
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 6
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
    .line 123
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 128
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->q:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 129
    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->r:Ljava/lang/Integer;

    .line 130
    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->s:Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->e(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 141
    return-void
.end method

.method public a(Ljava/util/ArrayList;JLcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 11
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
    const/4 v10, 0x0

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v5

    .line 108
    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v6, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    move-wide v6, p2

    move-object v8, p1

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;JLjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0, v10}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 119
    return-void
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v5

    .line 173
    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v6, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v4

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    iget v6, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->d:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0, v8}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 183
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const-string v0, "dialogAcceptButtonListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 207
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 208
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 210
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 216
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->q:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->q:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->q:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->r:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->s:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->b()V

    .line 92
    return-void
.end method
