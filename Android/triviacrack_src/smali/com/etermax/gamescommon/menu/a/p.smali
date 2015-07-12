.class public final Lcom/etermax/gamescommon/menu/a/p;
.super Lcom/etermax/gamescommon/menu/a/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private l:Z

.field private final m:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/a;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/p;->l:Z

    .line 38
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->m:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/p;->k()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/a;
    .locals 1
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/etermax/gamescommon/menu/a/p;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/p;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/p;->onFinishInflate()V

    .line 48
    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->m:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 70
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 71
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/p;->g:Lcom/etermax/gamescommon/menu/a/d;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/p;->h:Lcom/etermax/tools/f/a;

    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/p;->f:Lcom/etermax/gamescommon/datasource/e;

    .line 74
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/a/n;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/gamescommon/menu/a/p;->i:Lcom/etermax/gamescommon/menu/a/m;

    .line 75
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a00c0

    const v1, 0x7f0a00be

    .line 80
    const v0, 0x7f0a00bd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->b:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0a00bf

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->c:Landroid/widget/EditText;

    .line 82
    invoke-interface {p1, v1}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->d:Landroid/widget/ImageButton;

    .line 83
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->e:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f0a00c2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->a:Landroid/widget/ListView;

    .line 86
    invoke-interface {p1, v1}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/etermax/gamescommon/menu/a/p$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/p$1;-><init>(Lcom/etermax/gamescommon/menu/a/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    invoke-interface {p1, v2}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Lcom/etermax/gamescommon/menu/a/p$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/menu/a/p$2;-><init>(Lcom/etermax/gamescommon/menu/a/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/p;->l:Z

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/p;->l:Z

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/p;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/p;->m:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/a;->onFinishInflate()V

    .line 66
    return-void
.end method
