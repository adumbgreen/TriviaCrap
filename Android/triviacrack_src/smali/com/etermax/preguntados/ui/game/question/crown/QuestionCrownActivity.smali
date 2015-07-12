.class public Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;
.super Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/preguntados/ui/game/question/crown/b;
.implements Lcom/etermax/tools/widget/b/b;


# static fields
.field private static v:I


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field b:Lcom/etermax/preguntados/ui/d/i;

.field q:Lcom/etermax/preguntados/c/a/b;

.field private r:Z

.field private s:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/etermax/f;->crown_header:I

    sput v0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->r:Z

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;

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
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;

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

.method private a(Lcom/etermax/preguntados/datasource/dto/SpinDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 262
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 266
    :goto_1
    return-object v0

    .line 261
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v1, "dialogAcceptButtonListener"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    sget v1, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->resign_question:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "leave_question"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->e()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/SpinDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v2

    .line 79
    if-nez v2, :cond_0

    .line 80
    const-string v0, "CrownActivity"

    const-string v1, "Estado inconsistente"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    iget v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->e:I

    invoke-static {v0, v1, v3, v4, v5}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->finish()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_1
    iput-boolean v5, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->r:Z

    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0, p2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/SpinDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    .line 170
    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 171
    iput-boolean v9, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->r:Z

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->a(J)V

    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->c(J)V

    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 175
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    iget v6, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-static/range {v0 .. v8}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0, v9}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 187
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
    .line 191
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v3, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 195
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 196
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 197
    invoke-virtual {v3, p3}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 198
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 200
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v3, p4}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setPowerUps(Ljava/util/List;)V

    .line 202
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 203
    iget v5, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v0

    sub-int v0, v5, v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getAvailableCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->b:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;)V

    .line 213
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setType(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setRequestedCrown(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 217
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    .line 220
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
    .line 145
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/ui/game/a/a;->a(Ljava/util/ArrayList;)V

    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 148
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 150
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->s:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 151
    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->t:Ljava/lang/Integer;

    .line 152
    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->u:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->b:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->e(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 163
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

    .line 121
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v3

    .line 123
    const/4 v5, 0x0

    .line 125
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v10

    :goto_0
    if-ltz v2, :cond_0

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-ne v0, v4, :cond_1

    .line 127
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    .line 128
    const/4 v0, 0x1

    .line 125
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    move-wide v6, p2

    move-object v8, p1

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;JLjava/util/ArrayList;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0, v10}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 141
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 7
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->b:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    iget v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZZLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->finish()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 235
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v3

    .line 237
    const/4 v5, 0x0

    move v2, v8

    move v1, v8

    .line 240
    :goto_0
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-ne v0, v4, :cond_1

    .line 243
    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getBackupQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v5

    .line 244
    const/4 v0, 0x1

    .line 240
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->v:I

    iget v6, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->d:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/etermax/preguntados/ui/game/question/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/SpinType;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;ILjava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0, v8}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 257
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 286
    if-eqz p1, :cond_0

    .line 287
    const-string v0, "dialogAcceptButtonListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v6

    .line 290
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, v9}, Lcom/etermax/preguntados/ui/game/a/a;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/a/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)V

    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 298
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->CROWN:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/SpinType;)Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    move-result-object v7

    move v3, v4

    move v1, v4

    move-object v2, v5

    .line 299
    :goto_1
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    if-nez v1, :cond_1

    .line 300
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget-object v8, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-ne v0, v8, :cond_4

    .line 301
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    .line 302
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 299
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_1

    .line 305
    :cond_1
    if-nez v1, :cond_3

    .line 306
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    .line 309
    :goto_3
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getPowerup_question()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    .line 315
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Lcom/etermax/preguntados/datasource/dto/enums/Vote;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 313
    :cond_2
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    goto :goto_4

    :cond_3
    move-object v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_2

    .line 287
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
    .line 271
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->s:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->q:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->s:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->s:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->t:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->u:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/game/question/k;->a(Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/QuestionDTO;Ljava/lang/Integer;Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->r:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->b()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->onBackPressed()V

    goto :goto_0
.end method
