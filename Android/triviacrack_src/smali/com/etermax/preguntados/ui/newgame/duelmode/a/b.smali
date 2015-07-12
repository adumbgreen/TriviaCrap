.class public Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;
.super Lcom/etermax/tools/widget/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/a/a",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

.field protected b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/etermax/preguntados/ui/newgame/duelmode/a/c;)V
    .locals 2
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
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;>;I",
            "Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p4}, Lcom/etermax/tools/widget/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 20
    iput-object p4, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    .line 21
    iput p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->b:I

    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->c:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 105
    instance-of v2, v2, Lcom/etermax/preguntados/ui/newgame/duelmode/a/d;

    if-eqz v2, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v0
.end method

.method protected a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->a(I)Z

    move-result v1

    .line 97
    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/widget/a/a;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 51
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->getItemViewType(I)I

    move-result v1

    .line 66
    if-nez v0, :cond_0

    .line 67
    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 86
    :goto_1
    :pswitch_0
    return-object v0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a()I

    move-result v2

    iget v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->b:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;->a(Landroid/view/View;II)V

    goto :goto_1

    .line 81
    :pswitch_3
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/b;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;->a(Landroid/view/View;)V

    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 76
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/etermax/tools/widget/a/a;->getViewTypeCount()I

    move-result v0

    .line 46
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
