.class public Lcom/etermax/preguntados/ui/newgame/duelmode/n;
.super Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;",
            "Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;)V

    .line 28
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->c:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->d:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/newgame/duelmode/n;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)Z
    .locals 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 87
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/newgame/duelmode/n;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    sget v0, Lcom/etermax/i;->item_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 71
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/n$1;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/n$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/n;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/n$2;

    invoke-direct {v0, p0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/n$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/n;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    sget v0, Lcom/etermax/i;->section_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2}, Lcom/etermax/tools/widget/a/h;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->player_plural:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->new_duel_list_section:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 49
    sget v1, Lcom/etermax/i;->section_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/g",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V

    .line 59
    sget v0, Lcom/etermax/i;->item_checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 60
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 61
    invoke-direct {p0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/n;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_section_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_mode_search_player_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
