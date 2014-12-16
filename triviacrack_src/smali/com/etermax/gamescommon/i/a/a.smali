.class public Lcom/etermax/gamescommon/i/a/a;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/tools/b/a;

.field c:Lcom/etermax/gamescommon/login/datasource/c;

.field d:Landroid/content/Context;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/a/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/high16 v3, -0x100

    .line 85
    const/4 v0, 0x1

    .line 87
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_password_length:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->g:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_passwords_not_match:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/etermax/gamescommon/i/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/i/a/a$1;-><init>(Lcom/etermax/gamescommon/i/a/a;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/i/a/a$1;->a(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/a/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/i/a/a;->a(Z)V

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/a;->d:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->choose_your_password:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/a/a;->d:Landroid/content/Context;

    sget v2, Lcom/etermax/o;->save:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/i/a/a;->d:Landroid/content/Context;

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/i/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/i/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/a/a;->dismiss()V

    .line 77
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const-string v0, "password_accept_cancel_dialog"

    invoke-super {p0, p1, v0}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/etermax/k;->password_accept_cancel_dialog:I

    return v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/a/a;->e()V

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 57
    sget v0, Lcom/etermax/i;->password_field:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/a;->f:Landroid/widget/EditText;

    .line 58
    sget v0, Lcom/etermax/i;->confirm_field:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/a;->g:Landroid/widget/EditText;

    .line 60
    return-object v1
.end method
