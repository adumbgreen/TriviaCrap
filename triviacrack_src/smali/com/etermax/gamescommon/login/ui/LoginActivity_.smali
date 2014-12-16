.class public final Lcom/etermax/gamescommon/login/ui/LoginActivity_;
.super Lcom/etermax/gamescommon/login/ui/LoginActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final f:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;-><init>()V

    .line 30
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->f:Lorg/a/a/b/c;

    .line 82
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->a:Lcom/etermax/tools/social/a/b;

    .line 42
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 43
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->c:Lcom/etermax/tools/f/a;

    .line 44
    invoke-static {p0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->e:Lcom/etermax/gamescommon/social/a;

    .line 45
    invoke-static {p0}, Lcom/etermax/gamescommon/c;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->b:Lcom/etermax/gamescommon/b;

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->b(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->onBackPressed()V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 52
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/LoginActivity_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    return-void
.end method
