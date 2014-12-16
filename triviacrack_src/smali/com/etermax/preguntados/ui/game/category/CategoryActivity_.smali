.class public final Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;
.super Lcom/etermax/preguntados/ui/game/category/CategoryActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final q:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->q:Lorg/a/a/b/c;

    .line 129
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->k()V

    .line 55
    invoke-static {p0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->i:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 56
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->h:Lcom/etermax/tools/f/a;

    .line 57
    invoke-static {p0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->l:Lcom/etermax/gamescommon/social/a;

    .line 58
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->m:Lcom/etermax/tools/social/a/b;

    .line 59
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->n:Lcom/etermax/preguntados/datasource/d;

    .line 60
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->g:Lcom/etermax/preguntados/datasource/d;

    .line 61
    invoke-static {p0}, Lcom/etermax/preguntados/ui/newgame/f;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/f;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->f:Lcom/etermax/preguntados/ui/newgame/e;

    .line 62
    invoke-static {p0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->p:Lcom/etermax/preguntados/sharing/m;

    .line 63
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->j:Lcom/etermax/gamescommon/shop/c;

    .line 64
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->o:Lcom/etermax/gamescommon/login/datasource/a;

    .line 65
    invoke-static {p0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->k:Lcom/etermax/preguntados/ui/d/i;

    .line 66
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->b:I

    .line 108
    :cond_0
    const-string v0, "mSelectedCrown"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "mSelectedCrown"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->e:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 111
    :cond_1
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 114
    :cond_2
    const-string v0, "mStartsFromDashboard"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "mStartsFromDashboard"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->d:Z

    .line 117
    :cond_3
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->c:I

    .line 121
    :cond_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->q:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 48
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->a(Landroid/os/Bundle;)V

    .line 49
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->onBackPressed()V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->setContentView(I)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 84
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 78
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->setIntent(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity_;->k()V

    .line 127
    return-void
.end method
