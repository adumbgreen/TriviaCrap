.class public Lcom/etermax/preguntados/ui/newgame/NewGameActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/h/a/b;
.implements Lcom/etermax/preguntados/ui/newgame/b/b;
.implements Lcom/etermax/preguntados/ui/newgame/c;
.implements Lcom/etermax/preguntados/ui/newgame/h;
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:I

.field b:I

.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/tools/social/a/b;

.field e:Lcom/etermax/tools/f/a;

.field f:Lcom/etermax/preguntados/g/a;

.field g:Lcom/etermax/gamescommon/c/a;

.field h:Lcom/etermax/gamescommon/login/datasource/a;

.field i:Lcom/etermax/gamescommon/e;

.field j:Lcom/etermax/gamescommon/datasource/e;

.field private k:Lcom/etermax/preguntados/datasource/dto/GameDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mCoins"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/etermax/tools/nationality/Nationality;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 319
    new-instance v0, Lcom/etermax/preguntados/a/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/b;-><init>()V

    .line 320
    const-string v1, "aleatorio"

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/b;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/b;->a(I)V

    .line 322
    invoke-virtual {p2}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/b;->b(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 324
    return-void
.end method

.method private a(JLandroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {p4, v0}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 296
    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 297
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;-><init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;JLcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$3;->a(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method private a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Lcom/etermax/gamescommon/b/v;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/v;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/v;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 160
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$2;-><init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 141
    invoke-virtual {v0, p0}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->i:Lcom/etermax/gamescommon/e;

    const-string v1, "last_participants"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 117
    new-instance v2, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$1;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$1;-><init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;)V

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 120
    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 230
    sget v0, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->leave_duel:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reject_duel_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/etermax/preguntados/ui/newgame/b;->g()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(JLandroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    .line 165
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-direct {v0, v1, p2, p3}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/j;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 171
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->f:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->A:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 95
    const-string v0, "random"

    invoke-direct {p0, p1, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-direct {v0, v1, p1}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 98
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    .line 191
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->k:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 193
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "waiting_duel_game_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 195
    invoke-static {p1}, Lcom/etermax/preguntados/ui/newgame/b/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/newgame/b/a;

    move-result-object v0

    const-string v1, "confirm_new_random_duel_fragment"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 181
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/language/Language;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/etermax/preguntados/ui/newgame/a/a;->a(Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 104
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->h:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(ILcom/etermax/tools/nationality/Nationality;)V

    .line 206
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 211
    return-void
.end method

.method public c(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->c()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/ArrayList;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->finish()V

    .line 111
    return-void
.end method

.method public d(Lcom/etermax/gamescommon/language/Language;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    invoke-static {p1}, Lcom/etermax/preguntados/ui/newgame/g;->a(Lcom/etermax/gamescommon/language/Language;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "waiting_duel_game_fragment"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 241
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->k:Lcom/etermax/preguntados/datasource/dto/GameDTO;

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

    .line 244
    new-instance v4, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v4}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 245
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 246
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 247
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 248
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getQuestionTime()I

    move-result v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->k:Lcom/etermax/preguntados/datasource/dto/GameDTO;

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

    .line 253
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/a;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->k:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/etermax/preguntados/ui/newgame/a;-><init>(Lcom/etermax/preguntados/ui/newgame/NewGameActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/newgame/a;->a(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->k:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->d()V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
