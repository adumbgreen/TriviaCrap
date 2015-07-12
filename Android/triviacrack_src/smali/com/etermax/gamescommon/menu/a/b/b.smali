.class public final Lcom/etermax/gamescommon/menu/a/b/b;
.super Lcom/etermax/gamescommon/menu/a/b/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private k:Z

.field private final l:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/a;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->k:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->l:Lorg/a/a/b/c;

    .line 40
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/b/b;->d()V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/a;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/b;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/b;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/b;->onFinishInflate()V

    .line 46
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->l:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/n;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/b/b;->i:Lcom/etermax/gamescommon/menu/a/m;

    .line 70
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0a01df

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->h:Landroid/view/View;

    .line 76
    const v0, 0x7f0a01de

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->g:Landroid/view/View;

    .line 77
    const v0, 0x7f0a01dc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->d:Landroid/view/View;

    .line 78
    const v0, 0x7f0a01db

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->a:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a01dd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->f:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0a01ad

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->e:Landroid/widget/ViewSwitcher;

    .line 81
    const v0, 0x7f0a00b5

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->b:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a0121

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    .line 83
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/b;->a()V

    .line 84
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->k:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->k:Z

    .line 60
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/b/b;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/b;->l:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/b/a;->onFinishInflate()V

    .line 64
    return-void
.end method
