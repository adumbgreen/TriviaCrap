.class public final Lcom/etermax/gamescommon/social/l;
.super Lcom/etermax/gamescommon/social/k;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final e:Lorg/a/a/b/c;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/k;-><init>()V

    .line 24
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->e:Lorg/a/a/b/c;

    .line 65
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/twitter/d;->a(Landroid/content/Context;)Lcom/etermax/tools/social/twitter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->b:Lcom/etermax/tools/social/twitter/a;

    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->a:Lcom/etermax/tools/b/a;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->d:Lcom/etermax/tools/f/a;

    .line 53
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/social/l;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/l;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/social/l;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/social/l;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/social/k;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/social/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/l;->f:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/social/l;->f:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/social/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/social/l;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    return-void
.end method
