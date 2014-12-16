.class public final Lcom/etermax/gamescommon/login/ui/t;
.super Lcom/etermax/gamescommon/login/ui/s;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final c:Lorg/a/a/b/c;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/s;-><init>()V

    .line 22
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->c:Lorg/a/a/b/c;

    .line 61
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 48
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->b:Lcom/etermax/tools/f/a;

    .line 49
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/t;->a(Landroid/os/Bundle;)V

    .line 29
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/s;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->d:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->d:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/s;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/t;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 55
    return-void
.end method
