.class Lcom/etermax/gamescommon/login/ui/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/datasource/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/d;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/etermax/gamescommon/login/ui/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/d;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/d$1;->b:Lcom/etermax/gamescommon/login/ui/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/ui/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d$1;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const-string v1, "Renew"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d$1;->b:Lcom/etermax/gamescommon/login/ui/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_0
    return-void
.end method
