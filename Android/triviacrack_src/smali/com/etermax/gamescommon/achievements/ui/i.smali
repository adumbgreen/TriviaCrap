.class public final Lcom/etermax/gamescommon/achievements/ui/i;
.super Lcom/etermax/gamescommon/achievements/ui/g;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final i:Lorg/a/a/b/c;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/g;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->i:Lorg/a/a/b/c;

    .line 109
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->a:Lcom/etermax/gamescommon/datasource/e;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->b:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 58
    return-void
.end method

.method public static f()Lcom/etermax/gamescommon/achievements/ui/j;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/j;-><init>(Lcom/etermax/gamescommon/achievements/ui/i$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0a007b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->e:Landroid/widget/GridView;

    .line 73
    const v0, 0x7f0a0075

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->d:Landroid/widget/ViewSwitcher;

    .line 74
    const v0, 0x7f0a0079

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->f:Landroid/widget/ViewSwitcher;

    .line 75
    const v0, 0x7f0a007a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->c:Landroid/widget/ListView;

    .line 77
    const v0, 0x7f0a0077

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/i$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/i$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    const v0, 0x7f0a0076

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/i$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/i$2;-><init>(Lcom/etermax/gamescommon/achievements/ui/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/i;->c()V

    .line 107
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/i;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/g;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/achievements/ui/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->j:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/i;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    return-void
.end method
