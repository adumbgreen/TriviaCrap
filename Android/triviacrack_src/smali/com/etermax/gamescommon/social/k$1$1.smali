.class Lcom/etermax/gamescommon/social/k$1$1;
.super Lcom/etermax/gamescommon/j/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/k$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/etermax/gamescommon/social/k$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/k$1;Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/f;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/twitter/a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->twitter_invite_failure:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/social/k$1$1;->b(Z)V

    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/f;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 64
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->dismiss()V

    .line 65
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->twitter_invite_success:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Lcom/etermax/gamescommon/social/k;->dismiss()V

    .line 72
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/etermax/gamescommon/social/k;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/k$1$1;->a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/etermax/gamescommon/social/k;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/k$1$1;->a(Lcom/etermax/gamescommon/social/k;Ljava/lang/Void;)V

    return-void
.end method

.method protected b()Ljava/lang/Void;
    .locals 7

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/social/k$1$1;->b:Lcom/etermax/tools/social/twitter/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    iget-object v2, v2, Lcom/etermax/gamescommon/social/k$1;->a:Lcom/etermax/gamescommon/social/k;

    sget v3, Lcom/etermax/o;->twitter_invite_text:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    iget-object v5, v5, Lcom/etermax/gamescommon/social/k$1;->a:Lcom/etermax/gamescommon/social/k;

    sget v6, Lcom/etermax/o;->app_name:I

    invoke-virtual {v5, v6}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    iget-object v5, v5, Lcom/etermax/gamescommon/social/k$1;->a:Lcom/etermax/gamescommon/social/k;

    iget-object v5, v5, Lcom/etermax/gamescommon/social/k;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    iget-object v2, v2, Lcom/etermax/gamescommon/social/k$1;->a:Lcom/etermax/gamescommon/social/k;

    sget v3, Lcom/etermax/o;->twitter_account_name:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/social/k$1$1;->a:Lcom/etermax/gamescommon/social/k$1;

    iget-object v2, v2, Lcom/etermax/gamescommon/social/k$1;->a:Lcom/etermax/gamescommon/social/k;

    sget v3, Lcom/etermax/o;->web:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/twitter/a;->b(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/k$1$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
