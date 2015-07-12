.class public final Lcom/etermax/gamescommon/achievements/ui/p;
.super Lcom/etermax/gamescommon/achievements/ui/n;
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
    .line 23
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/n;-><init>()V

    .line 28
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->i:Lorg/a/a/b/c;

    .line 106
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 58
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/p;->e()V

    .line 59
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->a:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 60
    return-void
.end method

.method public static d()Lcom/etermax/gamescommon/achievements/ui/q;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/q;-><init>(Lcom/etermax/gamescommon/achievements/ui/p$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "mAchievements"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "mAchievements"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->h:Ljava/util/ArrayList;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0a008a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->e:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0086

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->f:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0a0047

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->b:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0a0048

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->c:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0080

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->d:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a0085

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/p$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/p$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/p;->b()V

    .line 95
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/p;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/n;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/achievements/ui/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->j:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/p;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method
