.class public Lcom/etermax/gamescommon/h/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/user/a/a;


# instance fields
.field a:Lcom/etermax/gamescommon/h/a/f;

.field b:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/h/a/f;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/h;->a:Lcom/etermax/gamescommon/h/a/f;

    .line 29
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/h;->b:Lcom/etermax/gamescommon/dashboard/b;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_game_friends_section_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 44
    invoke-virtual {p3}, Lcom/etermax/gamescommon/user/b/b;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    sget v0, Lcom/etermax/i;->section_text_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/etermax/gamescommon/user/b/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    sget v0, Lcom/etermax/i;->section_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    invoke-virtual {p3}, Lcom/etermax/gamescommon/user/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget v0, Lcom/etermax/i;->section_button_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget v0, Lcom/etermax/i;->section_button_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/etermax/gamescommon/h/a/h$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/h/a/h$1;-><init>(Lcom/etermax/gamescommon/h/a/h;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :goto_1
    return-void

    .line 48
    :cond_0
    sget v0, Lcom/etermax/i;->section_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    sget v0, Lcom/etermax/i;->section_button_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/d;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 68
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    invoke-virtual {p3}, Lcom/etermax/gamescommon/user/b/d;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 72
    invoke-virtual {p3}, Lcom/etermax/gamescommon/user/b/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 74
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 75
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    .line 76
    if-eqz p4, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v1, v5}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V

    .line 94
    :goto_1
    new-instance v5, Lcom/etermax/gamescommon/h/a/h$2;

    invoke-direct {v5, p0, v1, p3, p1}, Lcom/etermax/gamescommon/h/a/h$2;-><init>(Lcom/etermax/gamescommon/h/a/h;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/gamescommon/user/b/d;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v2, v5}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v1, Lcom/etermax/gamescommon/h/a/h$3;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/h/a/h$3;-><init>(Lcom/etermax/gamescommon/h/a/h;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v2, v1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->setInviteCallback(Lcom/etermax/gamescommon/user/b;)V

    .line 114
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 115
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v2, p1, v1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    goto :goto_1

    .line 82
    :cond_1
    if-eqz p4, :cond_2

    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/etermax/gamescommon/h/a/h;->b:Lcom/etermax/gamescommon/dashboard/b;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, p1, v1, v7}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    move-result-object v2

    move-object v5, v2

    .line 87
    :goto_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v7, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    const/high16 v2, 0x3f80

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/etermax/g;->new_game_friend_item_gap:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object v2, p2

    .line 91
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v5

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/etermax/gamescommon/h/a/h;->b:Lcom/etermax/gamescommon/dashboard/b;

    invoke-static {v2, v5, p1, v1}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/content/Context;Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 118
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-lt v1, v3, :cond_4

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 118
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 122
    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_game_friends_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
