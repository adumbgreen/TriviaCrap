.class public final Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;
.super Lcom/etermax/preguntados/ui/newgame/NewGameActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final k:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;-><init>()V

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->k:Lorg/a/a/b/c;

    .line 109
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->c()V

    .line 47
    invoke-static {p0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->f:Lcom/etermax/preguntados/g/a;

    .line 48
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->e:Lcom/etermax/tools/f/a;

    .line 49
    invoke-static {p0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->i:Lcom/etermax/gamescommon/e;

    .line 50
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->h:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    invoke-static {p0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->g:Lcom/etermax/gamescommon/c/a;

    .line 52
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->d:Lcom/etermax/tools/social/a/b;

    .line 53
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->j:Lcom/etermax/gamescommon/datasource/e;

    .line 54
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->c:Lcom/etermax/preguntados/datasource/d;

    .line 55
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    const-string v1, "mCoins"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "mCoins"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->a:I

    .line 97
    :cond_0
    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "mExtraShots"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->b:I

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->k:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 40
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->b(Landroid/os/Bundle;)V

    .line 41
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 43
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->onBackPressed()V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->setContentView(I)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 73
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->setIntent(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity_;->c()V

    .line 107
    return-void
.end method
