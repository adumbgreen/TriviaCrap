.class public final Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;
.super Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;
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
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->q:Lorg/a/a/b/c;

    .line 129
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/a;
    .locals 1
    .parameter

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/a;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->f()V

    .line 55
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->h:Lcom/etermax/tools/f/a;

    .line 56
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->k:Lcom/etermax/gamescommon/datasource/j;

    .line 57
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->n:Lcom/etermax/gamescommon/shop/c;

    .line 58
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->i:Lcom/etermax/gamescommon/login/datasource/a;

    .line 59
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->j:Lcom/etermax/preguntados/ui/game/a/a;

    .line 60
    invoke-static {p0}, Lcom/etermax/gamescommon/mediation/MediationManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/mediation/MediationManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->m:Lcom/etermax/gamescommon/mediation/MediationManager;

    .line 61
    invoke-static {p0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->l:Lcom/etermax/preguntados/e/c;

    .line 62
    invoke-static {p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->o:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 63
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->g:Lcom/etermax/preguntados/datasource/d;

    .line 64
    invoke-static {p0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->b:Lcom/etermax/preguntados/c/a/b;

    .line 65
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->b()V

    .line 66
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->getIntent()Landroid/content/Intent;

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

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->d:I

    .line 108
    :cond_0
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->e:I

    .line 111
    :cond_1
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 114
    :cond_2
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 117
    :cond_3
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

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
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->q:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 48
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->b(Landroid/os/Bundle;)V

    .line 49
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->onCreate(Landroid/os/Bundle;)V

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
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->onBackPressed()V

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->setContentView(I)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->q:Lorg/a/a/b/c;

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
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 78
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->setIntent(Landroid/content/Intent;)V

    .line 126
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity_;->f()V

    .line 127
    return-void
.end method
