.class public final Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;
.super Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final i:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;-><init>()V

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->i:Lorg/a/a/b/c;

    .line 114
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/duelmode/a;
    .locals 1
    .parameter

    .prologue
    .line 75
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->d()V

    .line 50
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->g:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->e:Lcom/etermax/preguntados/datasource/d;

    .line 52
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->h:Lcom/etermax/tools/f/a;

    .line 53
    invoke-static {p0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->f:Lcom/etermax/gamescommon/c/a;

    .line 54
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "mDuelName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->a:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v0, "mSelectedLanguage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "mSelectedLanguage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/language/Language;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->b:Lcom/etermax/gamescommon/language/Language;

    .line 99
    :cond_1
    const-string v0, "mPreselectedFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "mPreselectedFriends"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->c:Ljava/util/ArrayList;

    .line 102
    :cond_2
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->d:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 106
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->a(Landroid/os/Bundle;)V

    .line 44
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->onBackPressed()V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->setContentView(I)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->setIntent(Landroid/content/Intent;)V

    .line 111
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity_;->d()V

    .line 112
    return-void
.end method
