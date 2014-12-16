.class public final Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;
.super Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final z:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;-><init>()V

    .line 48
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->z:Lorg/a/a/b/c;

    .line 132
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->k:Lcom/etermax/gamescommon/e;

    .line 60
    invoke-static {p0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->j:Lcom/etermax/gamescommon/c/a;

    .line 61
    invoke-static {p0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->r:Lcom/etermax/preguntados/e/c;

    .line 62
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->i:Lcom/etermax/gamescommon/menu/a/d;

    .line 63
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->d:Lcom/etermax/tools/social/a/b;

    .line 64
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->n:Lcom/etermax/gamescommon/datasource/e;

    .line 65
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 66
    invoke-static {p0}, Lcom/etermax/preguntados/ui/d/j;->g(Landroid/content/Context;)Lcom/etermax/preguntados/ui/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->v:Lcom/etermax/preguntados/ui/d/i;

    .line 67
    invoke-static {p0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->g:Lcom/etermax/preguntados/ui/game/a/a;

    .line 68
    invoke-static {p0}, Lcom/etermax/preguntados/ui/newgame/f;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/f;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->t:Lcom/etermax/preguntados/ui/newgame/e;

    .line 69
    invoke-static {p0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->w:Lcom/etermax/chat/a/a;

    .line 70
    invoke-static {p0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->l:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 71
    invoke-static {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/promotion/PromotionsManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->p:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    .line 72
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->h:Lcom/etermax/tools/f/a;

    .line 73
    invoke-static {p0}, Lcom/etermax/gamescommon/mediation/MediationManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/mediation/MediationManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->s:Lcom/etermax/gamescommon/mediation/MediationManager;

    .line 74
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->x:Lcom/etermax/gamescommon/datasource/l;

    .line 75
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->b:Lcom/etermax/gamescommon/menu/a;

    .line 76
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->o:Lcom/etermax/gamescommon/datasource/j;

    .line 77
    invoke-static {p0}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->f:Lcom/etermax/gamescommon/shop/c;

    .line 78
    invoke-static {p0}, Lcom/etermax/preguntados/f/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->m:Lcom/etermax/preguntados/f/a;

    .line 79
    invoke-static {p0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->u:Lcom/etermax/preguntados/sharing/m;

    .line 80
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->e:Lcom/etermax/preguntados/datasource/d;

    .line 81
    invoke-static {p0}, Lcom/etermax/gamescommon/social/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->q:Lcom/etermax/gamescommon/social/h;

    .line 82
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->e(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "mIsShowingDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->z:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->d(Landroid/os/Bundle;)V

    .line 54
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->onBackPressed()V

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "mIsShowingDialog"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->setContentView(I)V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->z:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 89
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->z:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 101
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;->z:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 95
    return-void
.end method
