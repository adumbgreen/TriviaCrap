.class public final Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;
.super Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final g:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;-><init>()V

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->g:Lorg/a/a/b/c;

    .line 103
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/b;
    .locals 1
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/b;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->d()V

    .line 45
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 46
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->d:Lcom/etermax/gamescommon/shop/c;

    .line 47
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->b:Lcom/etermax/preguntados/datasource/d;

    .line 48
    invoke-static {p0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->c:Lcom/etermax/preguntados/sharing/m;

    .line 49
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "mTheme"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->f:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 91
    :cond_0
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "mGameDTO"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->a(Landroid/os/Bundle;)V

    .line 39
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->onBackPressed()V

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->setContentView(I)V

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->setIntent(Landroid/content/Intent;)V

    .line 100
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity_;->d()V

    .line 101
    return-void
.end method
