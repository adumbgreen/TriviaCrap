.class public Lcom/etermax/preguntados/ui/newgame/b/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->b:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->a:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    if-nez p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/etermax/k;->player_grid_adapter:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    sget v0, Lcom/etermax/i;->player_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 76
    sget v1, Lcom/etermax/i;->player_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    new-instance v2, Lcom/etermax/preguntados/ui/newgame/b/f;

    invoke-direct {v2, v0, v1}, Lcom/etermax/preguntados/ui/newgame/b/f;-><init>(Landroid/widget/ViewSwitcher;Landroid/widget/TextView;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/b/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 86
    new-instance v3, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v3}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 87
    invoke-virtual {v3, v2, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 89
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object p2

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/newgame/b/f;

    .line 80
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/b/f;->a()Landroid/widget/ViewSwitcher;

    move-result-object v2

    .line 81
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/b/f;->b()Landroid/widget/TextView;

    move-result-object v1

    goto :goto_0
.end method
