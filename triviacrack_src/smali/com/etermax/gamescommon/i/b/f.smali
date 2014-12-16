.class public final Lcom/etermax/gamescommon/i/b/f;
.super Lcom/etermax/gamescommon/i/b/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final l:Lorg/a/a/b/c;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;-><init>()V

    .line 26
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->l:Lorg/a/a/b/c;

    .line 76
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->c:Lcom/etermax/gamescommon/login/datasource/c;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 53
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->f:Lcom/etermax/gamescommon/login/datasource/a;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->d:Lcom/etermax/tools/f/a;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/i/a/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/i/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->e:Lcom/etermax/gamescommon/i/a/c;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->a:Lcom/etermax/tools/b/a;

    .line 57
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->d()V

    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/f;->b()V

    .line 74
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->m:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->l:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/i/b/f;->b(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/i/b/a;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/i/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->m:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->m:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/f;->l:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
