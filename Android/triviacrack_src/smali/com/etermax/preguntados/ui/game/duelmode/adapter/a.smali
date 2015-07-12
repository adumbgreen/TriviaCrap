.class public Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;
.super Lcom/etermax/tools/widget/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/a/a",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
        ">;",
        "Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;"
    }
.end annotation


# instance fields
.field private a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field private b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

.field private f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/h",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;>;",
            "Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;",
            "Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;",
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 26
    iput-object p4, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    .line 27
    iput-object p5, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 28
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/e;)V

    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    if-eqz p6, :cond_0

    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->c:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a()V

    .line 138
    return-void
.end method

.method protected a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->a(I)Z

    move-result v1

    .line 131
    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;->e()V

    .line 144
    return-void
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    :goto_0
    return v0

    .line 60
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->getItemViewType(I)I

    move-result v2

    .line 74
    if-nez v1, :cond_0

    .line 75
    packed-switch v2, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 124
    :cond_1
    :goto_1
    return-object v1

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 93
    instance-of v0, v2, Lcom/etermax/tools/widget/a/g;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    check-cast v2, Lcom/etermax/tools/widget/a/g;

    invoke-virtual {v2}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/view/View;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V

    goto :goto_1

    .line 98
    :pswitch_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 100
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getRewards()Ljava/util/List;

    move-result-object v6

    .line 105
    :cond_3
    sget-object v5, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 107
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v5

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;ZZLcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;Ljava/util/List;)V

    goto/16 :goto_1

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V

    goto/16 :goto_1

    .line 118
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/a;->f:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V

    goto/16 :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 90
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/etermax/tools/widget/a/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
