.class public Lcom/etermax/gamescommon/menu/a/a/f;
.super Lcom/etermax/gamescommon/menu/a/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->c:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;-><init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    invoke-static {p1}, Lcom/etermax/gamescommon/menu/a/b/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/j;

    move-result-object p2

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/a/f;->b()Lcom/etermax/gamescommon/menu/a/o;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/a/b/j;->a(Lcom/etermax/gamescommon/menu/a/o;)V

    .line 27
    return-object p2

    .line 24
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/j;

    goto :goto_0
.end method
