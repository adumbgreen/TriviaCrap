.class public Lcom/etermax/preguntados/ui/game/category/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:I

.field c:Lcom/etermax/tools/f/a;

.field d:Lcom/etermax/preguntados/g/a;

.field e:Lcom/etermax/preguntados/ui/d/i;

.field f:Landroid/widget/ImageView;

.field private g:Lcom/etermax/gamescommon/k/a;

.field private h:Lcom/etermax/gamescommon/k/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    .line 49
    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    .line 86
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/g;->e()Lcom/etermax/preguntados/ui/game/category/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/h;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/category/h;->a(I)Lcom/etermax/preguntados/ui/game/category/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/h;->a()Lcom/etermax/preguntados/ui/game/category/e;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/e;Lcom/etermax/gamescommon/k/a;)Lcom/etermax/gamescommon/k/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    new-instance v0, Lcom/etermax/preguntados/a/f;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/f;-><init>()V

    .line 229
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/f;->a(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 231
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/e;)Lcom/etermax/gamescommon/k/a;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/e;Lcom/etermax/gamescommon/k/a;)Lcom/etermax/gamescommon/k/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    return-object p1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->categoryCrownFragmentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 150
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/e$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/game/category/e$2;-><init>(Lcom/etermax/preguntados/ui/game/category/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->e:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tutorial_chrown_challenge"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;->g()V

    .line 165
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->crown_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->challenge_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 178
    new-instance v3, Lcom/etermax/preguntados/ui/game/category/e$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/etermax/preguntados/ui/game/category/e$3;-><init>(Lcom/etermax/preguntados/ui/game/category/e;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 195
    new-instance v3, Lcom/etermax/preguntados/ui/game/category/e$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/etermax/preguntados/ui/game/category/e$4;-><init>(Lcom/etermax/preguntados/ui/game/category/e;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 210
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->b()V

    .line 217
    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e;->g:Lcom/etermax/gamescommon/k/a;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/k/a;->b()V

    .line 221
    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e;->h:Lcom/etermax/gamescommon/k/a;

    .line 223
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;->e()V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public b()Lcom/etermax/preguntados/ui/game/category/f;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/e$1;-><init>(Lcom/etermax/preguntados/ui/game/category/e;)V

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "crown"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;->h()V

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/f;->k(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 104
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 112
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;->h()V

    .line 114
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 122
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 123
    const-string v0, "duel"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/e;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/category/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/category/f;->l(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 142
    :goto_2
    return-void

    .line 126
    :cond_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 127
    sget v1, Lcom/etermax/o;->trivia_challenge_txt_01:I

    .line 136
    :cond_1
    :goto_3
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->w:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    goto :goto_2

    .line 129
    :cond_2
    if-nez v0, :cond_3

    .line 130
    sget v1, Lcom/etermax/o;->trivia_challenge_txt_02:I

    goto :goto_3

    .line 132
    :cond_3
    if-nez v2, :cond_1

    .line 133
    sget v1, Lcom/etermax/o;->trivia_challenge_txt_03:I

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/e;->b()Lcom/etermax/preguntados/ui/game/category/f;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/e;->f()V

    .line 74
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/e;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->u:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 76
    return-void
.end method
