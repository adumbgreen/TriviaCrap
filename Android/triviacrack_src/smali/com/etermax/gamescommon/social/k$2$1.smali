.class Lcom/etermax/gamescommon/social/k$2$1;
.super Lcom/etermax/gamescommon/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/k$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/f",
        "<",
        "Lcom/etermax/gamescommon/social/k;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/k$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/k$2;Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/etermax/gamescommon/social/k$2$1;->a:Lcom/etermax/gamescommon/social/k$2;

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/f;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->twitter_follow_failure:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/k$2$1;->b(Z)V

    .line 95
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/f;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 96
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->dismiss()V

    .line 97
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/gamescommon/social/k$2$1;->a:Lcom/etermax/gamescommon/social/k$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    invoke-static {v0}, Lcom/etermax/gamescommon/social/k;->a(Lcom/etermax/gamescommon/social/k;)V

    .line 102
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/k$2$1;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->twitter_follow_success:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->dismiss()V

    .line 105
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    check-cast p1, Lcom/etermax/gamescommon/social/k;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/k$2$1;->a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    check-cast p1, Lcom/etermax/gamescommon/social/k;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/k$2$1;->a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Void;)V

    return-void
.end method

.method protected b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/social/k$2$1;->b:Lcom/etermax/tools/social/twitter/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/k$2$1;->a:Lcom/etermax/gamescommon/social/k$2;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/k$2;->a:Lcom/etermax/gamescommon/social/k;

    sget v2, Lcom/etermax/o;->twitter_account_name:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/twitter/a;->c(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/k$2$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
