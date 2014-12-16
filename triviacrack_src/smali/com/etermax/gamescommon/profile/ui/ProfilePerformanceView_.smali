.class public final Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;
.super Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private d:Z

.field private final e:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->d:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->e:Lorg/a/a/b/c;

    .line 41
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->b()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->d:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->e:Lorg/a/a/b/c;

    .line 46
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->b()V

    .line 47
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 74
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 75
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    const v0, 0x7f0a03ad

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->c:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 93
    const v0, 0x7f0a03ab

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->a:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 94
    const v0, 0x7f0a03ac

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->b:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 95
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->a()V

    .line 96
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->d:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->d:Z

    .line 66
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300f7

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/ProfilePerformanceView;->onFinishInflate()V

    .line 70
    return-void
.end method
