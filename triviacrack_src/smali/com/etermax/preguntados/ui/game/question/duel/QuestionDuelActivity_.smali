.class public final Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;
.super Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;
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
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;-><init>()V

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->q:Lorg/a/a/b/c;

    .line 131
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->f()V

    .line 56
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->j:Lcom/etermax/preguntados/ui/game/a/a;

    .line 57
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->n:Lcom/etermax/gamescommon/shop/c;

    .line 58
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->k:Lcom/etermax/gamescommon/datasource/j;

    .line 59
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->g:Lcom/etermax/preguntados/datasource/d;

    .line 60
    invoke-static {p0}, Lcom/etermax/gamescommon/mediation/MediationManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/mediation/MediationManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->m:Lcom/etermax/gamescommon/mediation/MediationManager;

    .line 61
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->h:Lcom/etermax/tools/f/a;

    .line 62
    invoke-static {p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->o:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 63
    invoke-static {p0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->l:Lcom/etermax/preguntados/e/c;

    .line 64
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->i:Lcom/etermax/gamescommon/login/datasource/a;

    .line 65
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->e:I

    .line 107
    :cond_0
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 110
    :cond_1
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 113
    :cond_2
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->d:I

    .line 116
    :cond_3
    const-string v0, "mDuelType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    const-string v0, "mDuelType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->b:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    .line 119
    :cond_4
    const-string v0, "mIsChallenged"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    const-string v0, "mIsChallenged"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->a:Z

    .line 123
    :cond_5
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->q:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->b(Landroid/os/Bundle;)V

    .line 50
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->onBackPressed()V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->setContentView(I)V

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 71
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 83
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 77
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->setIntent(Landroid/content/Intent;)V

    .line 128
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity_;->f()V

    .line 129
    return-void
.end method
