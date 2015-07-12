.class public final Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;
.super Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private p:Z

.field private final q:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->p:Z

    .line 35
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->q:Lorg/a/a/b/c;

    .line 44
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->d()V

    .line 45
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->q:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 72
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->a:Lcom/etermax/tools/f/a;

    .line 74
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 75
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    const v0, 0x7f0a037d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->m:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0a01e9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->h:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 87
    const v0, 0x7f0a0377

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->f:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 88
    const v0, 0x7f0a037e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->g:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 89
    const v0, 0x7f0a0379

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->k:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a0376

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->b:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 91
    const v0, 0x7f0a0378

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->l:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a037b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->j:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0a037c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->i:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    .line 94
    const v0, 0x7f0a037f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->d:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 95
    const v0, 0x7f0a0380

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->n:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a037a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->c:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 97
    const v0, 0x7f0a0381

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widgetv2/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->e:Lcom/etermax/tools/widgetv2/CustomLinearButton;

    .line 98
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->a()V

    .line 99
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->p:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->p:Z

    .line 64
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300ee

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView_;->q:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 67
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->onFinishInflate()V

    .line 68
    return-void
.end method
