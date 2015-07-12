.class public Lcom/etermax/gamescommon/h/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/h/a/f;


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method protected constructor <init>(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/d;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/d;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->f(Lcom/etermax/gamescommon/h/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/h/a/b;

    invoke-interface {v0, p1, p2}, Lcom/etermax/gamescommon/h/a/b;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    .line 341
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/d;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0, p1, p2}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V

    .line 336
    return-void
.end method
