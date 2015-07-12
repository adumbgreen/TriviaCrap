.class public Lcom/etermax/gamescommon/menu/a/a/c;
.super Lcom/etermax/gamescommon/menu/a/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/etermax/gamescommon/menu/a/a/g;->d:Lcom/etermax/gamescommon/menu/a/a/g;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/menu/a/a/a;-><init>(Lcom/etermax/gamescommon/menu/a/a/g;Lcom/etermax/gamescommon/menu/a/o;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    invoke-static {p1}, Lcom/etermax/gamescommon/menu/a/b/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/b/c;

    move-result-object p2

    .line 25
    :goto_0
    return-object p2

    .line 23
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/menu/a/b/c;

    goto :goto_0
.end method
