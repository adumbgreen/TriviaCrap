.class public Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/widget/a/e",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

.field protected b:Z


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_search_all_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->b:Z

    .line 127
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 89
    sget v0, Lcom/etermax/i;->item_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->b:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->b:Z

    .line 96
    :goto_0
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void

    .line 94
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    sget v0, Lcom/etermax/i;->item_button_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 74
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$1;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$1;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 0
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
    .line 45
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 7
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
    const/16 v6, 0x8

    .line 49
    new-instance v4, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v4}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 51
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 52
    sget v1, Lcom/etermax/i;->item_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    sget v2, Lcom/etermax/i;->item_name_small:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    sget v3, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 56
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 57
    invoke-virtual {v4, v0, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 59
    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_name()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p2, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 70
    return-void

    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public g(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_search_opponent_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
