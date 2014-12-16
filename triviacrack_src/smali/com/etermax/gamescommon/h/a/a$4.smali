.class Lcom/etermax/gamescommon/h/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/a;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->d(Lcom/etermax/gamescommon/h/a/a;)V

    .line 255
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tab_all_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 262
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$4;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tab_all_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 269
    :cond_0
    return-void
.end method
