.class public final Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;
.super Lcom/etermax/tools/social/twitter/TwitterLoginActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final d:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->d:Lorg/a/a/b/c;

    .line 73
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/etermax/tools/social/twitter/d;->a(Landroid/content/Context;)Lcom/etermax/tools/social/twitter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->c:Lcom/etermax/tools/social/twitter/a;

    .line 37
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->onBackPressed()V

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 43
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/social/twitter/TwitterLoginActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/etermax/tools/social/twitter/TwitterLoginActivity_;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 49
    return-void
.end method
