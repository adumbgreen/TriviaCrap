.class public Lcom/etermax/gamescommon/i/a/c;
.super Lcom/etermax/tools/widget/b/c;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/tools/b/a;

.field c:Lcom/etermax/gamescommon/login/datasource/c;

.field d:Landroid/content/Context;

.field private f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/a/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/i/a/c;->a(Z)V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "dialog_tag"

    const-string v2, "password_accept_cancel_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/c;->d:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->enter_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/a/c;->d:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/etermax/gamescommon/i/a/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/i/a/c;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/etermax/k;->request_password_dialog:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/c;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 55
    sget v0, Lcom/etermax/i;->password_field:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/c;->f:Landroid/widget/EditText;

    .line 56
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/etermax/tools/widget/b/c;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/a/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method
