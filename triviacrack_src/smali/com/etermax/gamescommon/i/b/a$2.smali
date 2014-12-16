.class Lcom/etermax/gamescommon/i/b/a$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->p()V
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
    .line 482
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 485
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->p(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->q(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/etermax/gamescommon/b/c;

    const-string v3, "change_username"

    invoke-direct {v0, v3}, Lcom/etermax/gamescommon/b/c;-><init>(Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v3, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/b/c;)V

    .line 491
    :cond_0
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Lcom/etermax/gamescommon/b/c;

    const-string v3, "change_pass"

    invoke-direct {v0, v3}, Lcom/etermax/gamescommon/b/c;-><init>(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v3, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/b/c;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/etermax/gamescommon/i/b/a;->b(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 497
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v3}, Lcom/etermax/gamescommon/i/b/a;->r(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v4, v4, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    iget-object v5, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v5, v5, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    iget-object v6, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v6, v6, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    .line 501
    :goto_0
    return-object v2

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v3, v0, Lcom/etermax/gamescommon/i/b/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v6, v0, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v7, v0, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v8, v0, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;Ljava/util/Date;Lcom/etermax/tools/nationality/Nationality;)V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 505
    instance-of v0, p2, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 506
    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    .line 507
    sparse-switch v0, :sswitch_data_0

    .line 525
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 526
    return-void

    .line 509
    :sswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v1, Lcom/etermax/o;->error:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v2, Lcom/etermax/o;->email_already_exists_no_password:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v3, Lcom/etermax/o;->ok:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 510
    invoke-virtual {p1}, Lcom/etermax/gamescommon/i/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "no_password_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/i/b/a$2;->b(Z)V

    goto :goto_0

    .line 514
    :sswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v1, Lcom/etermax/o;->error:I

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v2, Lcom/etermax/o;->error_link_limit:I

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    sget v3, Lcom/etermax/o;->ok:I

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 515
    invoke-virtual {p1}, Lcom/etermax/gamescommon/i/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mail_merged_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/i/b/a$2;->b(Z)V

    goto :goto_0

    .line 519
    :sswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->e:Lcom/etermax/gamescommon/i/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/i/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "request_password_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/i/a/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->e:Lcom/etermax/gamescommon/i/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0, v1, v4}, Lcom/etermax/gamescommon/i/a/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 521
    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/i/b/a$2;->b(Z)V

    goto :goto_0

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x25b -> :sswitch_0
        0x7dd -> :sswitch_2
        0x7de -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    const-string v1, "no_merge"

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->p(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {p1}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->update_profile_success:I

    invoke-static {v0, v1}, Lcom/etermax/a/b;->a(Landroid/content/Context;I)V

    .line 533
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->s(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/b;->k_()V

    .line 534
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 536
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$2;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->t(Lcom/etermax/gamescommon/i/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a$2;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 538
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    check-cast p1, Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a$2;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    check-cast p1, Lcom/etermax/gamescommon/i/b/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/a$2;->a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/Void;)V

    return-void
.end method
