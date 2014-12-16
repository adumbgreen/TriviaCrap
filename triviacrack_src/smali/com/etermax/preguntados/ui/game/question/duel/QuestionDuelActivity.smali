.class public Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;
.super Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/question/duel/b;
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:Z

.field b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

.field private q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/AnswerDTO;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;

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

    const-string v1, "mIsChallenged"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mDuelType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    sparse-switch p1, :sswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 376
    :sswitch_0
    const-string v1, "dialogAcceptButtonListener"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    sget v1, Lcom/etermax/o;->trivia_challenge_waiting_title:I

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->trivia_challenge_waiting_txt:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "duel_wait_opponent"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :sswitch_1
    const-string v1, "dialogAcceptButtonListener"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    sget v1, Lcom/etermax/o;->trivia_challenge_result_tie:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/etermax/tools/widget/b/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "duel_tie_break_question"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :sswitch_2
    const-string v1, "dialogAcceptButtonListener"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    sget v1, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->leave_duel:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 402
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_duel"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 207
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    if-nez v0, :cond_1

    .line 208
    if-eq p2, v4, :cond_0

    .line 209
    iget v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 213
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    .line 217
    :cond_1
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 219
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 220
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 221
    invoke-virtual {v1, p2}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 223
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {v1, p3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setPowerUps(Ljava/util/List;)V

    .line 225
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 226
    iget v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v0

    sub-int v0, v3, v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    goto :goto_2

    :cond_2
    move v0, v2

    .line 209
    goto :goto_0

    :cond_3
    move v1, v2

    .line 213
    goto :goto_1

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_5

    .line 232
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->b(I)V

    .line 237
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 238
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->c(I)V

    .line 240
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->d(I)V

    .line 241
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->e(I)V

    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->b(Z)V

    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 244
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/SpinDTO;)V
    .locals 7
    .parameter

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    .line 334
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getTieBreakQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 341
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    .line 345
    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v4

    .line 102
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->i()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->j()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->k()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    .line 109
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->h()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    if-ne v0, v1, :cond_1

    .line 116
    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)V

    .line 118
    :cond_1
    sget v0, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_4

    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v7

    invoke-interface {v7}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v8

    invoke-interface {v8}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/question/h;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_4
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v7

    invoke-interface {v7}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v8

    invoke-interface {v8}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/question/h;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->e:I

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->w:Z

    if-nez v0, :cond_2

    .line 354
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(I)V

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_2
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->x:Z

    goto :goto_0

    .line 360
    :cond_3
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V
    .locals 10
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

    .line 273
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v4

    .line 277
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 330
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    goto :goto_0

    .line 291
    :cond_2
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    goto :goto_0

    .line 295
    :cond_3
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    if-nez v0, :cond_4

    .line 296
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(I)V

    goto :goto_0

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    goto :goto_0

    .line 306
    :cond_5
    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    .line 307
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->c(I)V

    .line 308
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-ne v0, v1, :cond_7

    .line 309
    :cond_6
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v7

    invoke-interface {v7}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v8}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v8

    invoke-interface {v8}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/question/h;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 317
    invoke-virtual {p0, v0, v9}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_0

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 326
    invoke-virtual {p0, v0, v9}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V
    .locals 2
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
    .line 197
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)V

    .line 198
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 200
    sget v0, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 202
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v4

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    .line 252
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setOfferedCrown(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 254
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setRequestedCrown(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->a(J)V

    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->c(J)V

    .line 259
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 260
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 262
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 268
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 269
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
    .line 192
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 409
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v3

    .line 411
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)V

    :cond_0
    move v1, v2

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-virtual {v0, v7}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 422
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 423
    new-instance v4, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v4}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 425
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 426
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 427
    invoke-virtual {v4, v7}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 429
    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_2

    .line 430
    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_2
    iget-boolean v4, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 436
    iget v4, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getOpponentAnswer()I

    move-result v5

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v0

    if-ne v5, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v4

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    .line 421
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 436
    goto :goto_2

    .line 440
    :cond_5
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    if-eqz v0, :cond_8

    .line 441
    :cond_7
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getTieBreakQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 443
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 444
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 445
    invoke-virtual {v1, v7}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 446
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_8
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 450
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 367
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    .line 479
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v4

    .line 481
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget v3, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 488
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 489
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    const-string v0, "dialogAcceptButtonListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 456
    sparse-switch v0, :sswitch_data_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 458
    :sswitch_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->finish()V

    goto :goto_0

    .line 461
    :sswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Lcom/etermax/preguntados/datasource/dto/SpinDTO;)V

    goto :goto_0

    .line 464
    :sswitch_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b()V

    goto :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    if-eqz v0, :cond_0

    .line 182
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(I)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->d:I

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->e:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Z)V

    .line 67
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->a(J)V

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->c(J)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->z:Z

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->h()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->getAnswers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setType(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->i()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->j()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->k()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_3
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setType(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->q:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 92
    iput v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->s:I

    .line 93
    iput v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->t:I

    .line 94
    iput v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->u:I

    .line 95
    iput-boolean v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->v:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->w:Z

    .line 166
    invoke-super {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onPause()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->x:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(I)V

    .line 173
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->x:Z

    .line 175
    :cond_0
    iput-boolean v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->w:Z

    .line 176
    invoke-super {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onResume()V

    .line 177
    return-void
.end method
