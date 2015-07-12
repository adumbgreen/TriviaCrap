.class public final Lcom/etermax/gamescommon/achievements/ui/c;
.super Lcom/etermax/gamescommon/achievements/ui/b;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private e:Z

.field private final f:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/b;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->e:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->f:Lorg/a/a/b/c;

    .line 37
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/c;->a()V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/b;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/c;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/c;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/c;->onFinishInflate()V

    .line 43
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 65
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 66
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/achievements/ui/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/m;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/c;->d:Lcom/etermax/gamescommon/achievements/ui/k;

    .line 67
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    const v0, 0x7f0a007c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->b:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0a007d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->c:Landroid/widget/ProgressBar;

    .line 74
    const v0, 0x7f0a0048

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->a:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->e:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->e:Z

    .line 57
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/achievements/ui/c;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/c;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/achievements/ui/b;->onFinishInflate()V

    .line 61
    return-void
.end method
