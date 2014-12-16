.class public final Lcom/etermax/preguntados/ui/rankings/adapter/view/d;
.super Lcom/etermax/preguntados/ui/rankings/adapter/view/c;
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
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/c;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->b:Z

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->c:Lorg/a/a/b/c;

    .line 35
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->b()V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/c;
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->onFinishInflate()V

    .line 41
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->c:Lorg/a/a/b/c;

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
    const v0, 0x7f0a0044

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->a:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->a()V

    .line 71
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->b:Z

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->b:Z

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03010a

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/c;->onFinishInflate()V

    .line 59
    return-void
.end method
