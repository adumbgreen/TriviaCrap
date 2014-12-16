.class public Lcom/etermax/preguntados/ui/game/duelmode/c;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/duelmode/d;",
        ">;",
        "Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/preguntados/g/a;

.field c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field d:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field private e:Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;

.field private f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {}, Lcom/etermax/preguntados/ui/game/duelmode/e;->h()Lcom/etermax/preguntados/ui/game/duelmode/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/f;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/duelmode/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/f;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/f;->a()Lcom/etermax/preguntados/ui/game/duelmode/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/duelmode/d;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/c$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/c$1;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/c;)V

    return-object v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/d;->a(Ljava/lang/Long;)V

    .line 173
    return-void
.end method

.method public b()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->d:Lcom/etermax/preguntados/ui/game/duelmode/g;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v7

    .line 119
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/game/duelmode/h;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 124
    new-instance v5, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, v0, v3, v6}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;-><init>(Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;II)V

    .line 125
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    invoke-direct {v0, v4, v3}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    .line 128
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->e:Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;

    .line 131
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->duel_mode_results_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->e:Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/duelmode/h;->i()I

    move-result v0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->b:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 142
    :cond_1
    return-void

    .line 138
    :cond_2
    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/duelmode/h;->j()I

    move-result v0

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/d;->c()V

    .line 162
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/d;->b()V

    .line 167
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/d;->c()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->g:Z

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/duelmode/d;->a(Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/d;->b()V

    .line 192
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->a()Lcom/etermax/preguntados/ui/game/duelmode/d;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->g:Z

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    sget v0, Lcom/etermax/k;->duel_mode_results_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v0, Lcom/etermax/i;->duel_mode_results_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    sget v2, Lcom/etermax/o;->random_challenge:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_0
    sget v0, Lcom/etermax/i;->duel_mode_results_switcher:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 106
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 112
    :goto_1
    return-object v1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->e:Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a()V

    .line 156
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onDestroy()V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 147
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->g:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->g:Z

    .line 149
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/c;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/d;->c()V

    .line 151
    :cond_0
    return-void
.end method
