.class public Lcom/etermax/preguntados/sharing/c;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field private b:Lcom/etermax/preguntados/ui/game/duelmode/h;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 38
    iput-object p1, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    .line 39
    invoke-static {p3}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 114
    aget-object v1, v0, v3

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 116
    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 117
    aget-object v0, v0, v3

    add-int/lit8 v1, p2, -0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_4

    .line 120
    aget-object v1, v0, v3

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v4

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_3

    .line 127
    const-string v0, " "

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_3
    add-int/lit8 v0, p2, -0x3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->b()V

    .line 45
    return-void
.end method

.method public b()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v3, 0x5

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 51
    const-string v0, "game_duel_mode_share_userName"

    .line 52
    const-string v0, "game_duel_mode_share_profileContent"

    .line 53
    const-string v0, "game_duel_mode_share_avatar"

    .line 55
    new-instance v6, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v6}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    move v2, v3

    :goto_0
    move v4, v5

    .line 63
    :goto_1
    if-ge v4, v2, :cond_1

    .line 65
    add-int/lit8 v1, v4, 0x1

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xb

    invoke-direct {p0, v0, v7}, Lcom/etermax/preguntados/sharing/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "game_duel_mode_share_userName"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    iget-object v10, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "game_duel_mode_share_avatar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "id"

    iget-object v8, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 72
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/k;

    invoke-virtual {v6, v0, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_1
    move v1, v4

    .line 76
    :goto_2
    if-ge v1, v3, :cond_2

    .line 78
    add-int/lit8 v0, v1, 0x1

    .line 79
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game_duel_mode_share_profileContent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "id"

    iget-object v6, p0, Lcom/etermax/preguntados/sharing/c;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 82
    :cond_2
    sget v0, Lcom/etermax/i;->game_duel_mode_share_background:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getRewards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    sget v0, Lcom/etermax/i;->game_duel_mode_share_coinNumber:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getRewards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/RewardDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getQuantity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_3
    sget v0, Lcom/etermax/i;->game_duel_mode_share_groupName:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/duelmode/h;->k()I

    move-result v2

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v11, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/c;->d:Ljava/lang/String;

    .line 93
    sget v0, Lcom/etermax/i;->game_duel_mode_share_winText:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->you_won:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lcom/etermax/i;->game_duel_mode_share_image:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_4
    return-void

    .line 87
    :cond_3
    sget v0, Lcom/etermax/i;->game_duel_mode_coin_content:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/duelmode/h;->l()I

    move-result v2

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/c;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v11, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/c;->d:Ljava/lang/String;

    .line 100
    sget v0, Lcom/etermax/i;->game_duel_mode_share_winText:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/c;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->you_lost:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget v0, Lcom/etermax/i;->game_duel_mode_coin_content:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    sget v0, Lcom/etermax/i;->game_duel_mode_share_image:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/c;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/c;->d:Ljava/lang/String;

    return-object v0
.end method
