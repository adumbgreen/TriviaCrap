.class public final Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;
.super Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private e:Z

.field private final f:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->e:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->f:Lorg/a/a/b/c;

    .line 41
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 69
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

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
    .line 81
    const v0, 0x7f0a03b6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->c:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    .line 82
    const v0, 0x7f0a03b5

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->b:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    .line 83
    const v0, 0x7f0a039a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->a:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a03b7

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->d:Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;

    .line 85
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->e:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->e:Z

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300fa

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView_;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsView;->onFinishInflate()V

    .line 65
    return-void
.end method
