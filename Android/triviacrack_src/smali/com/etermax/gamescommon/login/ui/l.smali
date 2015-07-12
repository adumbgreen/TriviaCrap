.class public final Lcom/etermax/gamescommon/login/ui/l;
.super Lcom/etermax/gamescommon/login/ui/k;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final b:Lorg/a/a/b/c;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/k;-><init>()V

    .line 21
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->b:Lorg/a/a/b/c;

    .line 59
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->a:Lcom/etermax/tools/f/a;

    .line 47
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/l;->a(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/k;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/k;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->c:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->c:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/k;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/l;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 53
    return-void
.end method
