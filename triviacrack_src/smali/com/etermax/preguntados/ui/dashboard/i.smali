.class public Lcom/etermax/preguntados/ui/dashboard/i;
.super Lcom/etermax/gamescommon/dashboard/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/dashboard/a/c/a",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/etermax/preguntados/ui/dashboard/j;

.field private d:Lcom/etermax/gamescommon/login/datasource/a;

.field private e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

.field private f:Lcom/etermax/preguntados/ui/dashboard/h;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a/c/a;-><init>()V

    .line 112
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/i$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->g:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/i$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->h:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/dashboard/a/c/c;Lcom/etermax/preguntados/ui/dashboard/j;Lcom/etermax/gamescommon/dashboard/a/c/b;Lcom/etermax/gamescommon/dashboard/a/c/d;Lcom/etermax/preguntados/ui/dashboard/h;Landroid/content/Context;Lcom/etermax/gamescommon/login/datasource/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p3, p4}, Lcom/etermax/gamescommon/dashboard/a/c/a;-><init>(Lcom/etermax/gamescommon/dashboard/a/c/c;Lcom/etermax/gamescommon/dashboard/a/c/b;Lcom/etermax/gamescommon/dashboard/a/c/d;)V

    .line 112
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/i$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->g:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/i$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->h:Landroid/view/View$OnClickListener;

    .line 62
    iput-object p2, p0, Lcom/etermax/preguntados/ui/dashboard/i;->c:Lcom/etermax/preguntados/ui/dashboard/j;

    .line 63
    iput-object p6, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    .line 64
    iput-object p7, p0, Lcom/etermax/preguntados/ui/dashboard/i;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 65
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-direct {v0, p6}, Lcom/etermax/preguntados/ui/dashboard/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    .line 66
    iput-object p5, p0, Lcom/etermax/preguntados/ui/dashboard/i;->f:Lcom/etermax/preguntados/ui/dashboard/h;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/preguntados/ui/dashboard/j;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->c:Lcom/etermax/preguntados/ui/dashboard/j;

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/i;->g()J

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/etermax/tools/j/d;->a(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameUserDTO;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    sget v0, Lcom/etermax/i;->user_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    sget v0, Lcom/etermax/i;->crowns_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;

    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/widget/CategoryCrownsView;->setCrowns(Ljava/util/List;)V

    .line 525
    return-void

    .line 523
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/gamescommon/dashboard/a/c/d;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->a:Lcom/etermax/gamescommon/dashboard/a/c/d;

    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/i;->g()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget v0, Lcom/etermax/m;->minutes:I

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/tools/j/d;->a(Landroid/content/res/Resources;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/i;)Lcom/etermax/gamescommon/dashboard/a/c/d;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->a:Lcom/etermax/gamescommon/dashboard/a/c/d;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/language/Language;)I
    .locals 3
    .parameter

    .prologue
    .line 438
    invoke-static {p1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/i;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/i;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/tools/nationality/Nationality;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 443
    sget-object v0, Lcom/etermax/tools/nationality/Nationality;->PT:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 444
    sget v0, Lcom/etermax/h;->country_pt:I

    .line 456
    :goto_0
    return v0

    .line 446
    :cond_0
    sget v0, Lcom/etermax/h;->country_br:I

    goto :goto_0

    .line 448
    :cond_1
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 449
    sget-object v0, Lcom/etermax/tools/nationality/Nationality;->US:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 450
    sget v0, Lcom/etermax/h;->country_us:I

    goto :goto_0

    .line 452
    :cond_2
    sget v0, Lcom/etermax/h;->country_gb:I

    goto :goto_0

    .line 456
    :cond_3
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Lcom/etermax/gamescommon/language/Language;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->dashboard_new_game_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    sget v0, Lcom/etermax/i;->new_game_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/i;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v1
.end method

.method public a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_0
    sget v1, Lcom/etermax/i;->user_1_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 499
    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/view/View;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameUserDTO;)V

    .line 501
    sget v0, Lcom/etermax/i;->left_tile_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 502
    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 503
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/i;->f()Lcom/etermax/gamescommon/dashboard/b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget v0, Lcom/etermax/i;->user_2_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Lcom/etermax/gamescommon/dashboard/a/c/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/view/View;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameUserDTO;)V

    .line 508
    sget v1, Lcom/etermax/i;->right_tile_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 509
    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 510
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/i;->f()Lcom/etermax/gamescommon/dashboard/b;

    move-result-object v1

    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 512
    sget v0, Lcom/etermax/i;->player_info_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 513
    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    sget v1, Lcom/etermax/h;->contenedor_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    :goto_1
    return-void

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    sget v1, Lcom/etermax/h;->contenedor_avatar_b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 4
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
    const/16 v3, 0x8

    .line 161
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V

    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    sget v1, Lcom/etermax/i;->trash_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/i;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p2}, Lcom/etermax/tools/widget/a/h;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 198
    :pswitch_0
    sget v2, Lcom/etermax/f;->default_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 199
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 202
    :goto_1
    sget v0, Lcom/etermax/i;->section_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 203
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 174
    :pswitch_1
    sget v2, Lcom/etermax/f;->suggested_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 175
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 176
    goto :goto_1

    .line 178
    :pswitch_2
    sget v2, Lcom/etermax/f;->your_turn_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 179
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 180
    goto :goto_1

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/etermax/f;->pending_aproval_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 183
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 184
    goto :goto_1

    .line 186
    :pswitch_4
    sget v2, Lcom/etermax/f;->their_turn_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 187
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 188
    goto :goto_1

    .line 190
    :pswitch_5
    sget v2, Lcom/etermax/f;->endend_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 192
    goto :goto_1

    .line 194
    :pswitch_6
    sget v2, Lcom/etermax/f;->more_free_games_section:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 195
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    .line 196
    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 533
    sget v0, Lcom/etermax/i;->facebook_simple_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    .line 534
    sget v1, Lcom/etermax/i;->facebook_simple_item_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/widget/CustomFontTextView;

    .line 535
    sget v2, Lcom/etermax/i;->facebook_simple_item_image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 537
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/o;->suggest_fbconnect_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->suggest_fbconnect_description:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :goto_0
    sget v0, Lcom/etermax/h;->icon_fb:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    return-void

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    sget v4, Lcom/etermax/o;->suggest_fbinvite_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->suggest_fbinvite_description:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 16
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
            "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 210
    sget v2, Lcom/etermax/i;->dashboard_item_round:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 211
    sget v3, Lcom/etermax/i;->dashboard_item_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 212
    sget v4, Lcom/etermax/i;->time_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 213
    sget v5, Lcom/etermax/i;->level:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 217
    sget v6, Lcom/etermax/i;->dashboard_item_scores_switcher:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewSwitcher;

    .line 218
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v7

    .line 219
    if-eqz v7, :cond_0

    sget-object v8, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v7, v8, :cond_14

    .line 220
    :cond_0
    invoke-super/range {p0 .. p3}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V

    .line 222
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 224
    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/etermax/preguntados/ui/dashboard/widget/f;

    if-eqz v6, :cond_1

    .line 225
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/etermax/preguntados/ui/dashboard/i;->e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    move-object/from16 v6, p2

    check-cast v6, Lcom/etermax/preguntados/ui/dashboard/widget/f;

    invoke-virtual {v7, v6}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a(Lcom/etermax/preguntados/ui/dashboard/widget/f;)V

    .line 228
    :cond_1
    const-string v8, ""

    .line 229
    sget v6, Lcom/etermax/o;->time_ago:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getCreated()Ljava/util/Date;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/etermax/preguntados/ui/dashboard/i;->b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 231
    const/4 v7, 0x0

    .line 233
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomOpponent()Z

    move-result v6

    if-nez v6, :cond_22

    .line 234
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v6

    check-cast v6, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;->getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v6

    .line 235
    if-eqz v6, :cond_22

    .line 236
    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v7

    const/16 v12, 0x3e7

    if-le v7, v12, :cond_3

    const-string v6, "+99"

    .line 239
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->d()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move-object v5, v9

    .line 306
    :goto_2
    sget v6, Lcom/etermax/o;->round:I

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 307
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    sget v1, Lcom/etermax/i;->dashboard_item_your_score:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    sget v1, Lcom/etermax/i;->dashboard_item_rival_score:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSectionType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_13

    .line 315
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :goto_5
    return-void

    .line 236
    :cond_3
    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 242
    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 248
    :pswitch_0
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isPendingMyApproval()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    sget v1, Lcom/etermax/o;->pending_approval_you:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    sget v5, Lcom/etermax/f;->dashboard_status_title:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/etermax/o;->created:I

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v1

    .line 257
    goto/16 :goto_2

    .line 253
    :cond_5
    sget v1, Lcom/etermax/o;->your_time_left:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v10, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    sget v5, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 259
    :pswitch_1
    sget v1, Lcom/etermax/f;->dashboard_status_title:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    sget v1, Lcom/etermax/o;->pending_approval:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/etermax/o;->created:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 262
    goto/16 :goto_2

    .line 264
    :pswitch_2
    sget v1, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    sget v1, Lcom/etermax/o;->opponent_time_left:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v10, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/etermax/o;->created:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 267
    goto/16 :goto_2

    .line 269
    :pswitch_3
    sget v5, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Lcom/etermax/gamescommon/dashboard/a/c/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v6

    sget-object v7, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-eq v6, v7, :cond_6

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v6

    sget-object v7, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v6, v7, :cond_9

    .line 274
    :cond_6
    sget v5, Lcom/etermax/o;->you_won:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    move-object v8, v5

    .line 298
    :cond_7
    :goto_8
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v5, v6, :cond_8

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 299
    sget v5, Lcom/etermax/o;->the_game_has_expired:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 302
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/etermax/o;->finished:I

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/etermax/o;->time_ago:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_date()Ljava/util/Date;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v1}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_2

    .line 276
    :cond_9
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v6

    sget-object v7, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->RESIGNED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v6, v7, :cond_a

    .line 277
    sget v6, Lcom/etermax/o;->resigned_opponent:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 279
    :cond_a
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v6

    sget-object v7, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v6, v7, :cond_b

    .line 280
    sget v6, Lcom/etermax/o;->rejected_opponent:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 281
    :cond_b
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v6

    sget-object v7, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v6, v7, :cond_21

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_21

    .line 282
    sget v6, Lcom/etermax/o;->notification_user_no_time:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 285
    :cond_c
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-eq v5, v6, :cond_d

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v5, v6, :cond_e

    .line 286
    :cond_d
    sget v5, Lcom/etermax/o;->you_lost:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 288
    :cond_e
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->RESIGNED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v5, v6, :cond_f

    .line 289
    sget v5, Lcom/etermax/o;->resigned_you:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 291
    :cond_f
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v5, v6, :cond_10

    .line 292
    sget v5, Lcom/etermax/o;->rejected_you:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 293
    :cond_10
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v5

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->EXPIRED:Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    if-ne v5, v6, :cond_7

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    .line 294
    sget v5, Lcom/etermax/o;->notification_you_no_time:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 307
    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_3

    .line 308
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_4

    .line 319
    :cond_13
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 325
    :cond_14
    sget-object v7, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 326
    invoke-static {v7}, Lcom/etermax/preguntados/ui/game/duelmode/h;->a(Lcom/etermax/preguntados/ui/game/duelmode/g;)Lcom/etermax/preguntados/ui/game/duelmode/h;

    move-result-object v8

    .line 329
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    sget v5, Lcom/etermax/i;->dashboard_item_duel_countdown:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 333
    sget v7, Lcom/etermax/i;->dashboard_item_scores_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 334
    invoke-virtual {v8}, Lcom/etermax/preguntados/ui/game/duelmode/h;->b()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 338
    sget v6, Lcom/etermax/i;->tile_left_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewSwitcher;

    .line 339
    sget v7, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 340
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v11

    invoke-virtual {v8, v9, v11, v12}, Lcom/etermax/preguntados/ui/game/duelmode/h;->b(Landroid/content/Context;J)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 344
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v6

    if-eqz v6, :cond_17

    sget v6, Lcom/etermax/o;->random_challenge:I

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 345
    :goto_9
    sget v6, Lcom/etermax/i;->opponent_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    sget v6, Lcom/etermax/i;->dashboard_item_flag_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Lcom/etermax/gamescommon/language/Language;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    sget-object v8, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->PENDING:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    .line 352
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPosition()I

    move-result v9

    .line 353
    const/4 v6, 0x0

    move v7, v6

    :goto_a
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_20

    .line 354
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 355
    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/etermax/preguntados/ui/dashboard/i;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v12}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 356
    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v6

    .line 362
    :goto_b
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelCreator()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v8

    .line 364
    move-object/from16 v0, p2

    instance-of v7, v0, Lcom/etermax/preguntados/ui/dashboard/widget/f;

    if-eqz v7, :cond_16

    .line 365
    check-cast p2, Lcom/etermax/preguntados/ui/dashboard/widget/f;

    .line 366
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/etermax/preguntados/ui/dashboard/i;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v7

    .line 367
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v11

    .line 368
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    .line 369
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v7

    if-nez v7, :cond_15

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-gez v7, :cond_19

    .line 370
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/etermax/preguntados/ui/dashboard/i;->e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a(Lcom/etermax/preguntados/ui/dashboard/widget/f;)V

    .line 371
    invoke-interface/range {p2 .. p2}, Lcom/etermax/preguntados/ui/dashboard/widget/f;->a()V

    .line 378
    :cond_16
    :goto_c
    const-string v7, ""

    .line 379
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/etermax/o;->created_by:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 380
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 381
    sget v5, Lcom/etermax/o;->pending_approval_you:I

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/etermax/o;->challenger_plural:I

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getFinisherCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    :goto_d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    sget v1, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 344
    :cond_17
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto/16 :goto_9

    .line 353
    :cond_18
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_a

    .line 373
    :cond_19
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/etermax/preguntados/ui/dashboard/widget/f;->a(J)V

    .line 374
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/etermax/preguntados/ui/dashboard/i;->e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a(Lcom/etermax/preguntados/ui/dashboard/widget/f;Ljava/util/Date;)V

    goto/16 :goto_c

    .line 385
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/etermax/o;->created_by:I

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 388
    :cond_1b
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isEnded()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 389
    sget v5, Lcom/etermax/o;->challenge_place:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v10, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/etermax/o;->challenger_plural:I

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getFinisherCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    .line 394
    :cond_1c
    sget v8, Lcom/etermax/o;->finished:I

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    sget-object v5, Lcom/etermax/preguntados/ui/dashboard/i$5;->a:[I

    invoke-virtual {v6}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 416
    sget v1, Lcom/etermax/o;->finished:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v7

    goto/16 :goto_d

    .line 397
    :pswitch_4
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isRandomGame()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 398
    sget v5, Lcom/etermax/o;->challenge_place:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v10, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 399
    sget v6, Lcom/etermax/m;->amount_player:I

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-virtual {v10, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    .line 401
    :cond_1d
    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 402
    sget v1, Lcom/etermax/o;->you_won:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v7

    goto/16 :goto_d

    .line 404
    :cond_1e
    sget v1, Lcom/etermax/o;->you_lost:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v7

    .line 407
    goto/16 :goto_d

    .line 409
    :pswitch_5
    sget v1, Lcom/etermax/o;->rejected_you:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v7

    .line 410
    goto/16 :goto_d

    .line 412
    :pswitch_6
    sget v1, Lcom/etermax/o;->challenged_timeout:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v7

    .line 413
    goto/16 :goto_d

    :cond_1f
    move-object v1, v7

    goto/16 :goto_d

    :cond_20
    move-object v6, v8

    goto/16 :goto_b

    :cond_21
    move-object v5, v8

    goto/16 :goto_7

    :cond_22
    move-object v6, v7

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 395
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i$3;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/i$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/etermax/i;->dashboard_promo_close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/i$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/i$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    instance-of v0, p1, Lcom/etermax/preguntados/ui/dashboard/widget/a;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/widget/a;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->b()V

    .line 157
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->f:Lcom/etermax/preguntados/ui/dashboard/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/h;->z()Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->a:Lcom/etermax/gamescommon/dashboard/a/c/d;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/dashboard/a/c/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->f:Lcom/etermax/preguntados/ui/dashboard/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/h;->C()Lcom/etermax/preguntados/ui/dashboard/widget/a;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/i;->e:Lcom/etermax/preguntados/ui/dashboard/widget/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/widget/d;->a()V

    .line 434
    return-void
.end method
