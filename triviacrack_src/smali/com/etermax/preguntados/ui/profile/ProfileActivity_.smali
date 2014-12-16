.class public final Lcom/etermax/preguntados/ui/profile/ProfileActivity_;
.super Lcom/etermax/preguntados/ui/profile/ProfileActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final k:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;-><init>()V

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->k:Lorg/a/a/b/c;

    .line 107
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->c()V

    .line 46
    invoke-static {p0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->d:Lcom/etermax/gamescommon/social/a;

    .line 47
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->j:Lcom/etermax/gamescommon/datasource/l;

    .line 48
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->e:Lcom/etermax/tools/f/a;

    .line 49
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->f:Lcom/etermax/preguntados/datasource/d;

    .line 50
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->i:Lcom/etermax/tools/social/a/b;

    .line 51
    invoke-static {p0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->h:Lcom/etermax/preguntados/sharing/m;

    .line 52
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->g:Lcom/etermax/gamescommon/login/datasource/a;

    .line 53
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->a:J

    .line 95
    :cond_0
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->b:Ljava/lang/String;

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->k:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->a(Landroid/os/Bundle;)V

    .line 40
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 42
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->onBackPressed()V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->setContentView(I)V

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 71
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->k:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->setIntent(Landroid/content/Intent;)V

    .line 104
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity_;->c()V

    .line 105
    return-void
.end method
