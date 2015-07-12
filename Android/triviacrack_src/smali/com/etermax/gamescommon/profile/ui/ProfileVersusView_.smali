.class public final Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;
.super Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private g:Z

.field private final h:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->g:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->h:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->g:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->h:Lorg/a/a/b/c;

    .line 47
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 75
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 76
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const v0, 0x7f0a03aa

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->b:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0a03c9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/ProfileProgressBar;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->a:Lcom/etermax/tools/widget/ProfileProgressBar;

    .line 95
    const v0, 0x7f0a03cd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->f:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a03cc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->e:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a03ca

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->d:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a03cb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->c:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->g:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->g:Z

    .line 67
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300fc

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView_;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileVersusView;->onFinishInflate()V

    .line 71
    return-void
.end method
