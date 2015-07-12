.class public Lcom/etermax/preguntados/sharing/e;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ViewSwitcher;

.field f:Landroid/widget/ViewSwitcher;

.field g:Lcom/etermax/gamescommon/resources/RandomImageView;

.field private h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 45
    iput-object p3, p0, Lcom/etermax/preguntados/sharing/e;->i:Ljava/lang/Boolean;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->b()V

    .line 51
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    :goto_1
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->e:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/etermax/preguntados/sharing/e;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/etermax/preguntados/sharing/e;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->f:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v5}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 63
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomOpponent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/etermax/o;->button_random_opponent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_2
    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isActive()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v4

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v4

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-eq v4, v5, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/etermax/o;->game_over:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/etermax/preguntados/sharing/e;->g:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v6, "characters_lost_"

    invoke-virtual {v5, v6}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/etermax/o;->user_lost_match:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/e;->j:Ljava/lang/String;

    move-object v1, v4

    .line 79
    :goto_3
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->g:Lcom/etermax/gamescommon/resources/RandomImageView;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/resources/RandomImageView;->a()V

    .line 82
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_4
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/e;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/e;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/e;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->button_random_opponent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_5
    return-void

    :cond_0
    move v0, v1

    .line 57
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 58
    goto/16 :goto_1

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 69
    :cond_3
    iget-object v4, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/etermax/o;->you_won:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/etermax/preguntados/sharing/e;->g:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v6, "characters_won_"

    invoke-virtual {v5, v6}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/etermax/o;->user_won_match:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/e;->j:Ljava/lang/String;

    move-object v1, v4

    goto/16 :goto_3

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/etermax/o;->you_lost:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/etermax/preguntados/sharing/e;->g:Lcom/etermax/gamescommon/resources/RandomImageView;

    const-string v6, "characters_lost_"

    invoke-virtual {v5, v6}, Lcom/etermax/gamescommon/resources/RandomImageView;->setPrefix(Ljava/lang/String;)V

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/etermax/o;->user_lost_match:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/e;->j:Ljava/lang/String;

    move-object v1, v4

    goto/16 :goto_3

    .line 85
    :cond_5
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/etermax/o;->tie_break:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/e;->h:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/e;->j:Ljava/lang/String;

    return-object v0
.end method
