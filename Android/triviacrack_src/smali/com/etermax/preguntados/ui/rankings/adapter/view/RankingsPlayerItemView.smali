.class public Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ViewSwitcher;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field protected h:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a()V

    .line 63
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->h:Lcom/etermax/gamescommon/dashboard/b;

    .line 67
    return-void
.end method


# virtual methods
.method public a(JLcom/etermax/preguntados/ui/rankings/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->c:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;-><init>(Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;Lcom/etermax/preguntados/ui/rankings/b;J)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->h:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->c:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 79
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->isMe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a:Landroid/view/View;

    sget v2, Lcom/etermax/f;->rankings_player_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->b:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->e:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->f:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->d:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->g:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_1
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a:Landroid/view/View;

    sget v2, Lcom/etermax/f;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 102
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->b:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->e:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->grayDark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->f:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->d:Landroid/widget/TextView;

    sget v2, Lcom/etermax/f;->rankings_player_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
