.class Lcom/etermax/gamescommon/i/b/a$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->a(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    iput-object p3, p0, Lcom/etermax/gamescommon/i/b/a$3;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/a;->r(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 553
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    const-string v1, "merge"

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->link_account_success:I

    invoke-static {v0, v1}, Lcom/etermax/a/b;->a(Landroid/content/Context;I)V

    .line 559
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->u(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/b;->b()V

    .line 560
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$3;->b:Lcom/etermax/gamescommon/i/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 562
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a$3;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 563
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    check-cast p1, Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a$3;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    check-cast p1, Lcom/etermax/gamescommon/i/b/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a$3;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V

    return-void
.end method
