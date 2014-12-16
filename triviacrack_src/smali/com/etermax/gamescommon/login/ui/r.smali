.class public final Lcom/etermax/gamescommon/login/ui/r;
.super Lcom/etermax/gamescommon/login/ui/q;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final g:Lorg/a/a/b/c;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/q;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->g:Lorg/a/a/b/c;

    .line 68
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->b:Lcom/etermax/tools/b/a;

    .line 53
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->c:Lcom/etermax/tools/social/a/b;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->e:Lcom/etermax/tools/f/a;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->f:Lcom/etermax/gamescommon/login/datasource/c;

    .line 56
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/r;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/q;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/q;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->h:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->h:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/r;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method
