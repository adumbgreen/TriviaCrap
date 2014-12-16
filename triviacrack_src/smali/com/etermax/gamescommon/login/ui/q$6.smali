.class Lcom/etermax/gamescommon/login/ui/q$6;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/q;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Lcom/etermax/gamescommon/login/ui/q;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/login/ui/q;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/q$6;->b:Lcom/etermax/gamescommon/login/ui/q;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/ui/q$6;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q$6;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 206
    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    const/16 v1, 0x262

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$6;->b:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_forgot_password"

    const-string v3, "result"

    const-string v4, "pass_already_sent"

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 208
    sget v0, Lcom/etermax/o;->password_reseted_recently:I

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->ok:I

    invoke-virtual {p1, v1}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reset_ok_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/q$6;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Void;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    sget v0, Lcom/etermax/o;->recover_password_success:I

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->ok:I

    invoke-virtual {p1, v1}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "reset_ok_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$6;->b:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_forgot_password"

    const-string v3, "result"

    const-string v4, "password_sent"

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 202
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    check-cast p1, Lcom/etermax/gamescommon/login/ui/q;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/q$6;->a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    check-cast p1, Lcom/etermax/gamescommon/login/ui/q;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/q$6;->a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$6;->b:Lcom/etermax/gamescommon/login/ui/q;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/q;->f:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/q$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->f(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
