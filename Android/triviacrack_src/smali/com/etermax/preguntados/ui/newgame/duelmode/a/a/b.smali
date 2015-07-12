.class public Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;
.super Lcom/etermax/tools/widget/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/a/b",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;)V
    .locals 2
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
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;",
            "Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 22
    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 93
    new-instance v3, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;

    invoke-direct {v3, v0, v4}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;-><init>(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;IZ)V

    .line 96
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/h;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a/g;

    .line 102
    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->notifyDataSetChanged()V

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a()V

    .line 107
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/widget/a/b;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 55
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/b;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->getItemViewType(I)I

    move-result v1

    .line 70
    if-nez v0, :cond_0

    .line 71
    packed-switch v1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 87
    :goto_1
    return-object v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/etermax/tools/widget/a/b;->getViewTypeCount()I

    move-result v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/b;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
