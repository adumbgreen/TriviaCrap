.class Lcom/etermax/gamescommon/login/ui/g$4;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Lcom/etermax/gamescommon/login/ui/g;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/login/ui/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$4;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/h;->a_()V

    .line 152
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_enter_email"

    const-string v3, "domain"

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 153
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_email_exists"

    const-string v3, "domain"

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 154
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v3, Lcom/etermax/gamescommon/b/ad;

    const-string v4, "login_enter_email"

    const-string v5, "domain"

    iget-object v6, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 163
    instance-of v0, p2, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 166
    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v3

    .line 168
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/g;->b(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/h;

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/etermax/gamescommon/login/ui/h;->c(Ljava/lang/String;)V

    .line 170
    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 201
    :goto_0
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/g$4;->b(Z)V

    .line 202
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 203
    return-void

    .line 172
    :sswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/g;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v3, Lcom/etermax/gamescommon/b/ad;

    const-string v4, "login_email_notexists"

    const-string v5, "domain"

    iget-object v6, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 176
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/LoginActivity;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1, v1}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 178
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/g;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "create_user_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 179
    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v2, Lcom/etermax/gamescommon/b/ad;

    const-string v3, "login_email_exists"

    const-string v4, "domain"

    iget-object v5, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 184
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/g;->c(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/h;

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/login/ui/h;->a(Ljava/lang/String;)V

    move v0, v1

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v2, Lcom/etermax/gamescommon/b/ad;

    const-string v3, "login_email_exists_no_pass"

    const-string v4, "domain"

    iget-object v5, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 188
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/g;->d(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/h;

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/login/ui/h;->b(Ljava/lang/String;)V

    move v0, v1

    .line 189
    goto/16 :goto_0

    .line 191
    :sswitch_3
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$4;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$4;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 194
    :sswitch_4
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    sget v2, Lcom/etermax/o;->email_typo_desc:I

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/g;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 196
    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto/16 :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_4
        0x12d -> :sswitch_0
        0x25a -> :sswitch_1
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x25d -> :sswitch_1
        0x266 -> :sswitch_3
    .end sparse-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    check-cast p1, Lcom/etermax/gamescommon/login/ui/g;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/g$4;->a(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    check-cast p1, Lcom/etermax/gamescommon/login/ui/g;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/g$4;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$4;->b:Lcom/etermax/gamescommon/login/ui/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/g;->a:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/g$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
