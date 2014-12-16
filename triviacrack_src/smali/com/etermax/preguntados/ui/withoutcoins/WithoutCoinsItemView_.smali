.class public final Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;
.super Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private f:Z

.field private final g:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->f:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->g:Lorg/a/a/b/c;

    .line 40
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->f:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->g:Lorg/a/a/b/c;

    .line 45
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->a()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->f:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->g:Lorg/a/a/b/c;

    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->a()V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;
    .locals 1
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->onFinishInflate()V

    .line 56
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 78
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->e:Lcom/etermax/tools/j/a;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/shop/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->d:Lcom/etermax/gamescommon/shop/c;

    .line 81
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    const v0, 0x7f0a032d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->c:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0a04cc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->a:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a018b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->b:Landroid/widget/ImageView;

    .line 101
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->f:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->f:Z

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03014e

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->onFinishInflate()V

    .line 74
    return-void
.end method
