.class Lcom/etermax/gamescommon/i/b/a$13;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/i/b/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v1, "Facebook"

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    invoke-virtual {p1}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->facebook_unlink_success:I

    invoke-static {v0, v1}, Lcom/etermax/a/b;->a(Landroid/content/Context;I)V

    .line 472
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->n(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/b;->k_()V

    .line 473
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->o(Lcom/etermax/gamescommon/i/b/a;)V

    .line 474
    new-instance v0, Lcom/etermax/gamescommon/b/av;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/av;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$13;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/b/av;)V

    .line 476
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    check-cast p1, Lcom/etermax/gamescommon/i/b/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a$13;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V

    return-void
.end method
