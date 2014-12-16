.class public final Lcom/etermax/gamescommon/login/ui/c;
.super Lcom/etermax/gamescommon/login/ui/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final f:Lorg/a/a/b/c;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/a;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->f:Lorg/a/a/b/c;

    .line 135
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 53
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->b:Lcom/etermax/tools/b/a;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->e:Lcom/etermax/tools/f/a;

    .line 55
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->c:Lcom/etermax/tools/social/a/b;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const v0, 0x7f0a0308

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/etermax/gamescommon/login/ui/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/c$1;-><init>(Lcom/etermax/gamescommon/login/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_0
    const v0, 0x7f0a01be

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    new-instance v1, Lcom/etermax/gamescommon/login/ui/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/c$2;-><init>(Lcom/etermax/gamescommon/login/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    const v0, 0x7f0a0306

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    new-instance v1, Lcom/etermax/gamescommon/login/ui/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/c$3;-><init>(Lcom/etermax/gamescommon/login/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_2
    const v0, 0x7f0a030a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Lcom/etermax/gamescommon/login/ui/c$4;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/c$4;-><init>(Lcom/etermax/gamescommon/login/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/c;->b()V

    .line 133
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/c;->c(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->g:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->g:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/c;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
