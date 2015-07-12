.class public Lcom/etermax/preguntados/ui/game/category/a/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:Z

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field d:Lcom/etermax/preguntados/g/a;

.field e:Lcom/etermax/preguntados/sharing/m;

.field f:Landroid/widget/ViewSwitcher;

.field g:Landroid/widget/ViewSwitcher;

.field h:Lcom/etermax/gamescommon/resources/RandomImageView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/a/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/a/c;->g()Lcom/etermax/preguntados/ui/game/category/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/a/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/category/a/d;->a(Z)Lcom/etermax/preguntados/ui/game/category/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/a/d;->a()Lcom/etermax/preguntados/ui/game/category/a/a;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/k;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 186
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/category/a/a$2;-><init>(Lcom/etermax/preguntados/ui/game/category/a/a;Lcom/etermax/gamescommon/k;)V

    return-object v0
.end method

.method private g()I
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/EventDTO;

    .line 226
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    move-result-object v2

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->GAME_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    if-ne v2, v3, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getCoinsReward()I

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/a/b;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/a/a$1;-><init>(Lcom/etermax/preguntados/ui/game/category/a/a;)V

    return-object v0
.end method

.method public b()V
    .locals 9

    .prologue
    const/16 v8, 0x3e7

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 117
    :goto_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->g()I

    move-result v5

    .line 119
    new-instance v3, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v3}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->k:Lcom/etermax/gamescommon/dashboard/b;

    .line 120
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->k:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->f:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v7}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->k:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->g:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 124
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getUserLevelDataDTO()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getUserLevelDataDTO()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v3

    if-le v3, v8, :cond_4

    const-string v3, "+99"

    .line 126
    :goto_2
    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isActive()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v3

    sget-object v4, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-eq v3, v4, :cond_5

    .line 133
    sget v3, Lcom/etermax/preguntados/g/a;->r:I

    .line 134
    sget v4, Lcom/etermax/o;->game_over:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/category/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->h:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v7, "characters_lost_"

    invoke-virtual {v6, v7}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    .line 146
    :goto_3
    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->h:Lcom/etermax/gamescommon/resources/RandomImageView;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/resources/RandomImageView;->a()V

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->d:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 151
    iget-boolean v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->b:Z

    if-eqz v2, :cond_9

    .line 152
    sget v0, Lcom/etermax/o;->tie_break:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 155
    :goto_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/etermax/i;->game_end_result_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/etermax/i;->game_end_result_score:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->game_end_result_coins:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->gameEndPlayer1Text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomOpponent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->game_end_accept_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->gameEndPlayer2Text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->button_random_opponent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->gameEndPlayer2Image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/game/category/a/a;->a(Lcom/etermax/gamescommon/k;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void

    :cond_2
    move v0, v1

    .line 115
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 116
    goto/16 :goto_1

    .line 125
    :cond_4
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getUserLevelDataDTO()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 136
    :cond_5
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    sget v3, Lcom/etermax/preguntados/g/a;->q:I

    .line 138
    sget v4, Lcom/etermax/o;->you_won:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/category/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->h:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v7, "characters_won_"

    invoke-virtual {v6, v7}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 141
    :cond_6
    sget v3, Lcom/etermax/preguntados/g/a;->r:I

    .line 142
    sget v4, Lcom/etermax/o;->you_lost:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/game/category/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->h:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v7, "characters_lost_"

    invoke-virtual {v6, v7}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 165
    :cond_7
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->gameEndPlayer2Text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;->getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getUserLevelDataDTO()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v2

    if-le v2, v8, :cond_8

    const-string v0, "+99"

    .line 169
    :goto_6
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 168
    :cond_8
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    move-object v2, v0

    goto/16 :goto_4
.end method

.method c()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/a/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/category/a/b;->i()V

    .line 198
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/a/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/a/b;->m(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 203
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-boolean v2, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/sharing/f;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Ljava/lang/Boolean;)Lcom/etermax/preguntados/sharing/e;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->e:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 209
    return-void
.end method

.method f()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 213
    .line 215
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v2, v3, :cond_1

    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/EventDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getType()Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    move-result-object v0

    sget-object v4, Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;->GAME_ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    if-ne v0, v4, :cond_0

    .line 217
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/EventDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/EventDTO;->getCoinsReward()I

    move-result v2

    .line 215
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/a/b;

    invoke-interface {v0, v2}, Lcom/etermax/preguntados/ui/game/category/a/b;->a(I)V

    .line 221
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/a;->a()Lcom/etermax/preguntados/ui/game/category/a/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    sget v0, Lcom/etermax/k;->game_end_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
