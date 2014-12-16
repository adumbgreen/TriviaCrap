.class public final Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;
.super Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final r:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;-><init>()V

    .line 40
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->r:Lorg/a/a/b/c;

    .line 141
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "mPowerUpFree"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->f:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 110
    :cond_0
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 113
    :cond_1
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "mCoins"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->d:I

    .line 116
    :cond_2
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "mExtraShots"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->e:I

    .line 120
    :cond_3
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->b()V

    .line 56
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->i:Lcom/etermax/gamescommon/login/datasource/a;

    .line 57
    invoke-static {p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->o:Lcom/etermax/preguntados/ui/withoutcoins/g;

    .line 58
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->n:Lcom/etermax/gamescommon/shop/c;

    .line 59
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->j:Lcom/etermax/preguntados/ui/game/a/a;

    .line 60
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->h:Lcom/etermax/tools/f/a;

    .line 61
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->g:Lcom/etermax/preguntados/datasource/d;

    .line 62
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->k:Lcom/etermax/gamescommon/datasource/j;

    .line 63
    invoke-static {p0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->l:Lcom/etermax/preguntados/e/c;

    .line 64
    invoke-static {p0}, Lcom/etermax/gamescommon/mediation/MediationManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/mediation/MediationManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->m:Lcom/etermax/gamescommon/mediation/MediationManager;

    .line 65
    invoke-static {p0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->q:Lcom/etermax/preguntados/c/a/b;

    .line 66
    invoke-static {p0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->b:Lcom/etermax/preguntados/ui/d/i;

    .line 67
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->c(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "mSelectedCrown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->r:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->b(Landroid/os/Bundle;)V

    .line 50
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->onCreate(Landroid/os/Bundle;)V

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
    .line 98
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->onBackPressed()V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "mSelectedCrown"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->setContentView(I)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 74
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 86
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 80
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->setIntent(Landroid/content/Intent;)V

    .line 125
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity_;->b()V

    .line 126
    return-void
.end method
