.class public final Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;
.super Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;
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
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->d:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->e:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->a()V

    .line 43
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 71
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const v0, 0x7f0a03b4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->c:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0a03b3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->b:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0a03b2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->a:Landroid/widget/TextView;

    .line 85
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->d:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->d:Z

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300f9

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/profile/ProfileRankingsItemView;->onFinishInflate()V

    .line 66
    return-void
.end method
