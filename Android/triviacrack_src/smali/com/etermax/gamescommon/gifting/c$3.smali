.class Lcom/etermax/gamescommon/gifting/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/c;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/c;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->d:Lcom/etermax/gamescommon/gifting/e;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->d:Lcom/etermax/gamescommon/gifting/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/gifting/e;->a(Z)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/c;->dismiss()V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/gifting/c$3;->a:Lcom/etermax/gamescommon/gifting/c;

    sget v2, Lcom/etermax/o;->error:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/gifting/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
