.class Lcom/etermax/gamescommon/login/ui/j$1;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/j;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/a",
        "<",
        "Lcom/etermax/gamescommon/login/ui/j;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/j;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    return-void
.end method

.method private c(Ljava/lang/Exception;)I
    .locals 2
    .parameter

    .prologue
    .line 97
    const/4 v0, -0x1

    .line 98
    instance-of v1, p1, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-eqz v1, :cond_0

    .line 99
    check-cast p1, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v1

    .line 101
    sparse-switch v1, :sswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 103
    :sswitch_0
    const/4 v0, 0x1

    .line 104
    goto :goto_0

    .line 107
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x12f -> :sswitch_1
        0x260 -> :sswitch_0
        0x261 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/login/ui/j;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/j;->b(Lcom/etermax/gamescommon/login/ui/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->a_()V

    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/j;->i()Lcom/etermax/gamescommon/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 63
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    instance-of v0, p2, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    const/16 v3, 0x266

    if-ne v0, v3, :cond_0

    .line 68
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/login/ui/j$1;->b(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$1;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$1;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 93
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 94
    return-void

    .line 70
    :cond_0
    instance-of v0, p2, Lcom/etermax/tools/social/a/a;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$1;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->d()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/login/ui/j$1;->c(Ljava/lang/Exception;)I

    move-result v3

    .line 75
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    move v0, v1

    .line 76
    :goto_1
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/j$1;->b(Z)V

    .line 78
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/etermax/gamescommon/b/z;->c:Lcom/etermax/gamescommon/b/z;

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/z;)V

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/login/ui/j;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 75
    goto :goto_1

    .line 84
    :pswitch_1
    sget v0, Lcom/etermax/o;->dialog_account_to_link:I

    invoke-virtual {p1, v0}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/etermax/o;->app_name:I

    invoke-virtual {p1, v3}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget v1, Lcom/etermax/o;->link_account:I

    invoke-virtual {p1, v1}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/etermax/o;->no_create_a_new_account_instead_02:I

    invoke-virtual {p1, v3}, Lcom/etermax/gamescommon/login/ui/j;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/etermax/tools/widget/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/i;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1, v2}, Lcom/etermax/tools/widget/b/i;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 90
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "link_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/i;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/etermax/gamescommon/login/ui/j;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/j$1;->a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/etermax/gamescommon/login/ui/j;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/j$1;->a(Lcom/etermax/gamescommon/login/ui/j;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method protected b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$1;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v2, "Facebook"

    iget-object v3, p0, Lcom/etermax/gamescommon/login/ui/j$1;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v3}, Lcom/etermax/tools/social/a/b;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/j$1;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v4}, Lcom/etermax/tools/social/a/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$1;->a:Lcom/etermax/gamescommon/login/ui/j;

    new-instance v1, Lcom/etermax/gamescommon/b/ae;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/ae;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 117
    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$1;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
