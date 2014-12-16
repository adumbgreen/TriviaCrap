.class Lcom/etermax/gamescommon/login/ui/d$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/d;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/login/ui/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/d$3;->a:Lcom/etermax/gamescommon/login/ui/d;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d$3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Nuevo password: 123456"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    iget-object v0, p1, Lcom/etermax/gamescommon/login/ui/d;->a:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Landroid/content/Context;)V

    .line 168
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/d;->a(Lcom/etermax/gamescommon/login/ui/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b(Landroid/app/Activity;)V

    .line 170
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/d;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 171
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    check-cast p1, Lcom/etermax/gamescommon/login/ui/d;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/d$3;->a(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d$3;->a:Lcom/etermax/gamescommon/login/ui/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/d;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v1, "123456"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->e(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method
