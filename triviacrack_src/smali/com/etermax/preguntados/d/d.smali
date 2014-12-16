.class Lcom/etermax/preguntados/d/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/d/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/etermax/gamescommon/dashboard/b;

.field private e:[Z


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/d/c;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/etermax/preguntados/d/d;->b:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/d/d;->d:Lcom/etermax/gamescommon/dashboard/b;

    .line 76
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/etermax/preguntados/d/d;->e:[Z

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/etermax/preguntados/d/c;->a(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->e:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/etermax/preguntados/d/c;->b(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/d;)[Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->e:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/d/d;->a(I)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 104
    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/etermax/preguntados/d/d;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/etermax/k;->inactive_friend_item_layout:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v2, Lcom/etermax/preguntados/d/e;

    iget-object v1, p0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-direct {v2, v1, v3}, Lcom/etermax/preguntados/d/e;-><init>(Lcom/etermax/preguntados/d/c;Lcom/etermax/preguntados/d/c$1;)V

    .line 112
    sget v1, Lcom/etermax/i;->item_check:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, v2, Lcom/etermax/preguntados/d/e;->a:Landroid/widget/ToggleButton;

    .line 113
    sget v1, Lcom/etermax/i;->item_player_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, v2, Lcom/etermax/preguntados/d/e;->b:Landroid/widget/ViewSwitcher;

    .line 114
    sget v1, Lcom/etermax/i;->item_player_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/etermax/preguntados/d/e;->c:Landroid/widget/TextView;

    .line 115
    sget v1, Lcom/etermax/i;->item_player_time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/etermax/preguntados/d/e;->d:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    :goto_0
    iget-object v1, v2, Lcom/etermax/preguntados/d/e;->a:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/etermax/preguntados/d/d;->e:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 123
    iget-object v1, v2, Lcom/etermax/preguntados/d/e;->a:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/etermax/preguntados/d/d$1;

    invoke-direct {v3, p0, p1}, Lcom/etermax/preguntados/d/d$1;-><init>(Lcom/etermax/preguntados/d/d;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, v2, Lcom/etermax/preguntados/d/e;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/etermax/preguntados/d/d;->d:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v4, v2, Lcom/etermax/preguntados/d/e;->b:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/k;

    invoke-virtual {v3, v4, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 144
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 146
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/etermax/preguntados/d/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getLastActiveDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v3, v0

    long-to-float v0, v0

    const v1, 0x4ca4cb80

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 147
    iget-object v1, v2, Lcom/etermax/preguntados/d/e;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/m;->push_gifting_send_01:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_1
    return-object p2

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/d/e;

    move-object v2, v1

    goto/16 :goto_0

    .line 149
    :cond_1
    iget-object v0, v2, Lcom/etermax/preguntados/d/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/d/d;->b:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->invite_to_play_app:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
