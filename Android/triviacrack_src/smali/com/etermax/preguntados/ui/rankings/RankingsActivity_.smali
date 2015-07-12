.class public final Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;
.super Lcom/etermax/preguntados/ui/rankings/RankingsActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final c:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->c:Lorg/a/a/b/c;

    .line 76
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->a:Lcom/etermax/tools/social/a/b;

    .line 39
    invoke-static {p0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->b:Lcom/etermax/preguntados/sharing/m;

    .line 40
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/d;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/d;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->a(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->onBackPressed()V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 46
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 52
    return-void
.end method
