.class public final Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;
.super Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->c:Lorg/a/a/b/c;

    .line 75
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->b:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 38
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->onBackPressed()V

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->setContentView(I)V

    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 45
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->setContentView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 57
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 51
    return-void
.end method
