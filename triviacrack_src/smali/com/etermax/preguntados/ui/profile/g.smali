.class public final Lcom/etermax/preguntados/ui/profile/g;
.super Lcom/etermax/preguntados/ui/profile/e;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final w:Lorg/a/a/b/c;

.field private x:Landroid/view/View;

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/e;-><init>()V

    .line 37
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->w:Lorg/a/a/b/c;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    const-string v1, "mConsultedUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "mConsultedUser"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/etermax/preguntados/ui/profile/g;->n:J

    .line 112
    :cond_0
    const-string v1, "mFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "mFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->o:Ljava/lang/String;

    .line 116
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->s()V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/g;->A()V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/social/g;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/social/g;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->f:Lcom/etermax/gamescommon/social/a;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->a:Lcom/etermax/gamescommon/e;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->c:Lcom/etermax/tools/f/a;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->d:Lcom/etermax/gamescommon/datasource/e;

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->e:Lcom/etermax/tools/social/a/b;

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->q:Lcom/etermax/preguntados/c/a/b;

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->p:Lcom/etermax/preguntados/datasource/d;

    .line 78
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->v()V

    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->u()V

    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->x()V

    return-void
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->y()V

    return-void
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->t()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/ui/profile/g;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/e;->w()V

    return-void
.end method

.method public static z()Lcom/etermax/preguntados/ui/profile/h;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/preguntados/ui/profile/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/profile/h;-><init>(Lcom/etermax/preguntados/ui/profile/g$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    const v0, 0x7f0a00fc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->h:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    .line 93
    const v0, 0x7f0a03d2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->k:Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;

    .line 94
    const v0, 0x7f0a00fd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->j:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    .line 95
    const v0, 0x7f0a03d0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->i:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    .line 96
    const v0, 0x7f0a0398

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->l:Landroid/view/View;

    .line 97
    const v0, 0x7f0a03d4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->t:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    .line 98
    const v0, 0x7f0a0399

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->r:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f0a03d3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->s:Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;

    .line 100
    const v0, 0x7f0a03ce

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->u:Lcom/etermax/preguntados/ui/profile/ProfileLevelView;

    .line 101
    const v0, 0x7f0a03cf

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->v:Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;

    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->b()V

    .line 103
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/g;->r()V

    .line 104
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->w:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/profile/g;->b(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/profile/e;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/profile/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 62
    const v0, 0x7f03004c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->x:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 84
    return-void
.end method

.method public s()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$1;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$6;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$6;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$3;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$2;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$7;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$4;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/g;->y:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/g$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/g$5;-><init>(Lcom/etermax/preguntados/ui/profile/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
