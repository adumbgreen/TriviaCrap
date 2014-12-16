.class public final Lcom/etermax/gamescommon/menu/a/b/m;
.super Lcom/etermax/gamescommon/menu/a/b/l;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private g:Z

.field private final h:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/l;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->g:Z

    .line 35
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->h:Lorg/a/a/b/c;

    .line 39
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/b/m;->d()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/l;
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/m;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/m;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/m;->onFinishInflate()V

    .line 45
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 67
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 68
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/n;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/b/m;->i:Lcom/etermax/gamescommon/menu/a/m;

    .line 69
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0a01dc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->b:Landroid/view/View;

    .line 75
    const v0, 0x7f0a01dd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->d:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f0a01e1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->e:Landroid/view/View;

    .line 77
    const v0, 0x7f0a01e2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->f:Landroid/view/View;

    .line 78
    const v0, 0x7f0a0121

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->a:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    .line 79
    const v0, 0x7f0a01ad

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->c:Landroid/widget/ViewSwitcher;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/m;->a()V

    .line 81
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->g:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->g:Z

    .line 59
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030091

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/b/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/m;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/b/l;->onFinishInflate()V

    .line 63
    return-void
.end method
