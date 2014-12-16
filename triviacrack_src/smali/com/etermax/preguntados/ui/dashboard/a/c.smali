.class public final Lcom/etermax/preguntados/ui/dashboard/a/c;
.super Lcom/etermax/preguntados/ui/dashboard/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final h:Lorg/a/a/b/c;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/a;-><init>()V

    .line 30
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->h:Lorg/a/a/b/c;

    .line 112
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->a:Lcom/etermax/tools/f/a;

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->d:Lcom/etermax/gamescommon/social/h;

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->f:Lcom/etermax/preguntados/b/a;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->e:Lcom/etermax/preguntados/datasource/d;

    .line 63
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 64
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->b:Lcom/etermax/gamescommon/social/a;

    .line 65
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/dashboard/a/d;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/d;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/c$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    const v0, 0x7f0a014b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->g:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0a0147

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/a/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/a/c$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_0
    const v0, 0x7f0a0150

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/a/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/a/c$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/c;->a(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/dashboard/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f03005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->i:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/c;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 71
    return-void
.end method
