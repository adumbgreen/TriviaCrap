.class public Lcom/etermax/gamescommon/menu/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/menu/a/a/a;

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/menu/a/a/a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    .line 47
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/a/a;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    instance-of v0, v0, Lcom/etermax/gamescommon/menu/a/b/i;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    check-cast v0, Lcom/etermax/gamescommon/menu/a/b/i;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    check-cast v0, Lcom/etermax/gamescommon/menu/a/b/i;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/b/i;->c()V

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/m;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    .line 38
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    .line 39
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->b:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/m;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    .line 28
    return-void
.end method
