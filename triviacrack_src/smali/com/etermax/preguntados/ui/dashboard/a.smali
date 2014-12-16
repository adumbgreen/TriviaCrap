.class public Lcom/etermax/preguntados/ui/dashboard/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field b:Lcom/etermax/tools/f/a;

.field c:Lcom/etermax/preguntados/datasource/dto/GameDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 42
    return-void
.end method

.method private a(J)I
    .locals 3
    .parameter

    .prologue
    .line 135
    const-wide/16 v0, 0x6

    rem-long v0, p1, v0

    long-to-int v0, v0

    .line 136
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v0

    return v0
.end method

.method private a(JLjava/lang/Boolean;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->a:Lcom/etermax/preguntados/ui/game/duelmode/h;

    .line 126
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Boolean;)I
    .locals 1
    .parameter

    .prologue
    .line 130
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/h;->a:Lcom/etermax/preguntados/ui/game/duelmode/h;

    .line 131
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/h;->g()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/c;->e()Lcom/etermax/preguntados/ui/dashboard/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/dashboard/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/d;->a()Lcom/etermax/preguntados/ui/dashboard/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 91
    const-string v1, ""

    .line 92
    const-string v0, ""

    .line 94
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 96
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v3

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v3, v5, :cond_1

    .line 97
    :cond_0
    sget v0, Lcom/etermax/o;->new_game:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    sget v0, Lcom/etermax/o;->notification_new_game:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v5

    invoke-interface {v5}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/etermax/preguntados/ui/dashboard/a;->a(J)I

    move-result v0

    move-object v2, v3

    .line 119
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v3

    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v3, v5, :cond_5

    .line 101
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getWorldCupEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a;->a(Ljava/lang/Boolean;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 104
    if-ne v0, v7, :cond_3

    .line 105
    const-string v1, ""

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 107
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_1
    sget v1, Lcom/etermax/o;->invited_group_challenge_txt:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_2
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getWorldCupEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4}, Lcom/etermax/preguntados/ui/dashboard/a;->a(JLjava/lang/Boolean;)I

    move-result v1

    move-object v2, v3

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_0

    .line 114
    :cond_3
    sget v1, Lcom/etermax/o;->invited_group_challenge_txt_plural:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move v9, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    new-instance v0, Lcom/etermax/preguntados/a/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/d;-><init>()V

    .line 162
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/d;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p2, p3}, Lcom/etermax/preguntados/a/d;->a(J)V

    .line 164
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 165
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/dashboard/b;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/a$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/a;)V

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 144
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 145
    const-string v2, "accepted"

    invoke-direct {p0, v2, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a;->a(Ljava/lang/String;J)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/b;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 148
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 154
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 155
    const-string v2, "rejected"

    invoke-direct {p0, v2, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a;->a(Ljava/lang/String;J)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/b;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 158
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 170
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->a()Lcom/etermax/preguntados/ui/dashboard/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    sget v0, Lcom/etermax/k;->dashboard_accept_game_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 81
    sget v0, Lcom/etermax/i;->dashboard_accept_game_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/etermax/i;->dashboard_accept_game_subtitle:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    sget v2, Lcom/etermax/i;->dashboard_accept_game_image:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    iget-object v4, p0, Lcom/etermax/preguntados/ui/dashboard/a;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 87
    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->x()V

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y()V

    .line 67
    :cond_0
    return-void
.end method
