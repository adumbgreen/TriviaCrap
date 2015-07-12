.class public final Lcom/etermax/preguntados/ui/dashboard/g;
.super Lcom/etermax/preguntados/ui/dashboard/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final r:Lorg/a/a/b/c;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/e;-><init>()V

    .line 40
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->r:Lorg/a/a/b/c;

    .line 205
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 66
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/e/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->a:Lcom/etermax/gamescommon/e/a;

    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->l:Lcom/etermax/gamescommon/social/a;

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/promotion/PromotionsManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->b:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/version/VersionManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/version/VersionManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->o:Lcom/etermax/gamescommon/version/VersionManager;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/a/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->h:Lcom/etermax/preguntados/ui/game/a/a;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->c:Lcom/etermax/preguntados/datasource/d;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->f:Lcom/etermax/gamescommon/login/datasource/c;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->k:Lcom/etermax/preguntados/g/a;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->n:Lcom/etermax/gamescommon/e;

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->i:Lcom/etermax/gamescommon/notification/d;

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->j:Lcom/etermax/tools/social/a/b;

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->p:Lcom/etermax/tools/b/a;

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->e:Lcom/etermax/gamescommon/menu/a/d;

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->g:Lcom/etermax/tools/f/a;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->m:Lcom/etermax/gamescommon/c/a;

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->l:Lcom/etermax/gamescommon/social/a;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 83
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x102000a

    .line 98
    const v0, 0x7f0a013a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    const v0, 0x7f0a0172

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_1
    const v0, 0x7f0a013e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_2
    const v0, 0x7f0a0174

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_3
    const v0, 0x7f0a0173

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$5;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_4
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 174
    if-eqz v0, :cond_5

    .line 175
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$6;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    :cond_5
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 189
    if-eqz v0, :cond_6

    .line 190
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/g$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/g$7;-><init>(Lcom/etermax/preguntados/ui/dashboard/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    :cond_6
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/g;->p()V

    .line 203
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->s:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->r:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/g;->b(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/e;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/dashboard/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->s:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->s:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/g;->r:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 89
    return-void
.end method
