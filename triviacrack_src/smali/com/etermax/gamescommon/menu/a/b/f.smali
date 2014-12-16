.class public final Lcom/etermax/gamescommon/menu/a/b/f;
.super Lcom/etermax/gamescommon/menu/a/b/e;
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
    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/e;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->b:Z

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->c:Lorg/a/a/b/c;

    .line 35
    invoke-direct {p0}, Lcom/etermax/gamescommon/menu/a/b/f;->a()V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/e;
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/etermax/gamescommon/menu/a/b/f;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/menu/a/b/f;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/f;->onFinishInflate()V

    .line 41
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 63
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 64
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    const v0, 0x7f0a00ab

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->a:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->b:Z

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->b:Z

    .line 55
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/b/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008e

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/menu/a/b/f;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/f;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/menu/a/b/e;->onFinishInflate()V

    .line 59
    return-void
.end method
