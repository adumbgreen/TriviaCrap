.class public final Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;
.super Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private i:Z

.field private final j:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->i:Z

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->j:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->b()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->i:Z

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->j:Lorg/a/a/b/c;

    .line 47
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->b()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;
    .locals 1
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->onFinishInflate()V

    .line 53
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->j:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 75
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 77
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->a:Lcom/etermax/gamescommon/e;

    .line 78
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    const v0, 0x7f0a032c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->f:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 90
    const v0, 0x7f0a032a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->g:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0a0329

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->c:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0a00c6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->d:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0a032b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->h:Landroid/view/View;

    .line 94
    const v0, 0x7f0a0328

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->e:Landroid/widget/ViewSwitcher;

    .line 95
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->a()V

    .line 96
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->i:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->i:Z

    .line 67
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300d2

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->j:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->onFinishInflate()V

    .line 71
    return-void
.end method
