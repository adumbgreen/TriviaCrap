.class public final Lcom/etermax/preguntados/ui/rankings/g;
.super Lcom/etermax/preguntados/ui/rankings/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final g:Lorg/a/a/b/c;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/e;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->g:Lorg/a/a/b/c;

    .line 94
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->c:Lcom/etermax/tools/social/a/b;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->b:Lcom/etermax/gamescommon/social/a;

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->a:Lcom/etermax/preguntados/datasource/d;

    .line 60
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/rankings/h;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/rankings/h;-><init>(Lcom/etermax/preguntados/ui/rankings/g$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0a0427

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    .line 75
    const v0, 0x7f0a0428

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->e:Landroid/support/v4/view/ViewPager;

    .line 77
    const v0, 0x7f0a0426

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/etermax/preguntados/ui/rankings/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/rankings/g$1;-><init>(Lcom/etermax/preguntados/ui/rankings/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/g;->c()V

    .line 92
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/rankings/g;->b(Landroid/os/Bundle;)V

    .line 35
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/rankings/e;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/rankings/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 50
    const v0, 0x7f030109

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->h:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/g;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method
