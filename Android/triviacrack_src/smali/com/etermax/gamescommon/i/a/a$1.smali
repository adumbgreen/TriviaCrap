.class Lcom/etermax/gamescommon/i/a/a$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/etermax/gamescommon/i/a/a$1;->a:Lcom/etermax/gamescommon/i/a/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/a$1;->a:Lcom/etermax/gamescommon/i/a/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/a/a;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a$1;->a:Lcom/etermax/gamescommon/i/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/a/a;->a(Lcom/etermax/gamescommon/i/a/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/etermax/gamescommon/i/a/a$1;->a:Lcom/etermax/gamescommon/i/a/a;

    iget-object v2, v2, Lcom/etermax/gamescommon/i/a/a;->c:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v2, v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/a$1;->a:Lcom/etermax/gamescommon/i/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/a/a;->dismiss()V

    .line 114
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->update_profile_success:I

    invoke-static {v0, v1}, Lcom/etermax/a/b;->a(Landroid/content/Context;I)V

    .line 115
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/a/a$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method
