.class public final Lcom/etermax/gamescommon/view/FlagsLayout_;
.super Lcom/etermax/gamescommon/view/FlagsLayout;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private h:Z

.field private final i:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/view/FlagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->h:Z

    .line 37
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->i:Lorg/a/a/b/c;

    .line 46
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->c()V

    .line 47
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 74
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 75
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->b:Lcom/etermax/gamescommon/e;

    .line 77
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 78
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const v0, 0x7f0a00e9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->d:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0a00ea

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->e:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a00f2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->g:Landroid/view/View;

    .line 91
    const v0, 0x7f0a00ec

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->f:Landroid/widget/ViewSwitcher;

    .line 92
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->a()V

    .line 93
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->h:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->h:Z

    .line 66
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/view/FlagsLayout_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->onFinishInflate()V

    .line 70
    return-void
.end method
