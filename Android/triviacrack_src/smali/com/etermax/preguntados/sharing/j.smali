.class public final Lcom/etermax/preguntados/sharing/j;
.super Lcom/etermax/preguntados/sharing/i;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private f:Z

.field private final g:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/etermax/preguntados/sharing/i;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/j;->f:Z

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/j;->g:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/j;->f()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)Lcom/etermax/preguntados/sharing/i;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/etermax/preguntados/sharing/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etermax/preguntados/sharing/j;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)V

    .line 47
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/j;->onFinishInflate()V

    .line 48
    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/j;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/j;->n:Lcom/etermax/tools/social/a/b;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/j;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/j;->a:Lcom/etermax/preguntados/c/a/b;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->a()V

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
    .line 80
    const v0, 0x7f0a03be

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/j;->d:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a00c6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/j;->e:Landroid/widget/ViewSwitcher;

    .line 82
    const v0, 0x7f0a04a1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/j;->b:Landroid/widget/RelativeLayout;

    .line 83
    const v0, 0x7f0a0142

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/j;->c:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->b()V

    .line 85
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/j;->f:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/j;->f:Z

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030120

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/j;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/j;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/i;->onFinishInflate()V

    .line 66
    return-void
.end method
