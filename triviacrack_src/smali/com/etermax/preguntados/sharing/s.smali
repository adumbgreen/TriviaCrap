.class public Lcom/etermax/preguntados/sharing/s;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean p3, p0, Lcom/etermax/preguntados/sharing/s;->g:Z

    .line 36
    iput-object p1, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    .line 37
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->getHistoricalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/s;->f:Z

    .line 39
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->getPeriodicalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 120
    aget-object v1, v0, v3

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 122
    :cond_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 123
    aget-object v0, v0, v3

    add-int/lit8 v1, p2, -0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_4

    .line 126
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

    .line 132
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_3

    .line 133
    const-string v0, " "

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_3
    add-int/lit8 v0, p2, -0x3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IILcom/etermax/gamescommon/dashboard/b;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "top_weekly_rank_share_avatar"

    .line 88
    const-string v0, "top_weekly_rank_share_userName"

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/sharing/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top_weekly_rank_share_userName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top_weekly_rank_share_avatar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 95
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/s;->f:Z

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/s;->b()V

    .line 44
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v2, 0x5

    .line 49
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/s;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/s;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/etermax/o;->all_time_ranking:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 51
    const-string v0, "top_weekly_rank_share_profileContent"

    .line 53
    new-instance v5, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v5}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    move v1, v2

    .line 61
    :goto_1
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_2

    .line 62
    invoke-direct {p0, v0, v0, v5}, Lcom/etermax/preguntados/sharing/s;->a(IILcom/etermax/gamescommon/dashboard/b;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 49
    :cond_0
    sget v0, Lcom/etermax/o;->weekly_ranking:I

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 65
    :cond_2
    iget-boolean v3, p0, Lcom/etermax/preguntados/sharing/s;->f:Z

    if-eqz v3, :cond_3

    .line 66
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/etermax/preguntados/sharing/s;->a(IILcom/etermax/gamescommon/dashboard/b;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    :cond_3
    move v3, v0

    move v4, v0

    .line 70
    :goto_3
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/s;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->isMe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0, v3, v5}, Lcom/etermax/preguntados/sharing/s;->a(IILcom/etermax/gamescommon/dashboard/b;)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    iget-object v6, p0, Lcom/etermax/preguntados/sharing/s;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/etermax/preguntados/sharing/s;->e:Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->getUserRanks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 78
    :cond_5
    :goto_4
    if-ge v4, v2, :cond_6

    .line 79
    add-int/lit8 v0, v4, 0x1

    .line 80
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top_weekly_rank_share_profileContent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "id"

    iget-object v5, p0, Lcom/etermax/preguntados/sharing/s;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 83
    :cond_6
    return-void
.end method

.method public getShareText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/s;->g:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/s;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->all_time_ranking:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/s;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/s;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/o;->weekly_ranking:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
