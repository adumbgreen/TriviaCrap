.class public final Lcom/etermax/gamescommon/menu/a/b/h;
.super Lcom/etermax/gamescommon/menu/a/b/g;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private c:Z

.field private final d:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/g;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->c:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->d:Lorg/a/a/b/c;

    .line 36
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/b/h;->d()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/g;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/h;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/h;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/h;->onFinishInflate()V

    .line 42
    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 65
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const v0, 0x7f0a00ca

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->a:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0a00a3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->b:Landroid/widget/ProgressBar;

    .line 72
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/h;->a()V

    .line 73
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->c:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->c:Z

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008f

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/b/h;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/h;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/b/g;->onFinishInflate()V

    .line 60
    return-void
.end method
