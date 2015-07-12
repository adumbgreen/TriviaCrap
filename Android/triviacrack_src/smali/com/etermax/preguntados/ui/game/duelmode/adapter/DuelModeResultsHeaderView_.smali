.class public final Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;
.super Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private b:Z

.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->b:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->c:Lorg/a/a/b/c;

    .line 36
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->b:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->c:Lorg/a/a/b/c;

    .line 41
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->a()V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;
    .locals 1
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->onFinishInflate()V

    .line 47
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->c:Lorg/a/a/b/c;

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
    const v0, 0x7f0a019d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->a:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->b:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->b:Z

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030072

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;->onFinishInflate()V

    .line 65
    return-void
.end method
