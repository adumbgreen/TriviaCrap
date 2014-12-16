.class public Lcom/etermax/gamescommon/login/ui/n;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/login/ui/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/c;

.field b:Lcom/etermax/tools/b/a;

.field c:Lcom/etermax/tools/social/a/b;

.field d:Lcom/etermax/tools/f/a;

.field e:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 76
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/gamescommon/login/ui/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/p;-><init>()V

    .line 63
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/n;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/n;Lcom/etermax/gamescommon/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/n;->a(Lcom/etermax/gamescommon/b/l;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/login/ui/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/etermax/gamescommon/login/ui/n$3;

    sget v1, Lcom/etermax/o;->authenticating:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/login/ui/n;->c:Lcom/etermax/tools/social/a/b;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/login/ui/n$3;-><init>(Lcom/etermax/gamescommon/login/ui/n;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/n$3;->a(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/etermax/gamescommon/b/ac;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ac;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/ac;->b(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p3}, Lcom/etermax/gamescommon/b/ac;->c(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/etermax/gamescommon/login/ui/o;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/gamescommon/login/ui/n$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/n$2;-><init>(Lcom/etermax/gamescommon/login/ui/n;)V

    return-object v0
.end method

.method c()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v7, -0x100

    .line 93
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/n;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->email_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 94
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/n;->getView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 97
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 101
    sget v3, Lcom/etermax/o;->error_email_required:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v2

    .line 108
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 109
    sget v0, Lcom/etermax/o;->error_password_required:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v7}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 113
    :goto_1
    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0, v4, v5}, Lcom/etermax/gamescommon/login/ui/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-static {v4}, Lcom/etermax/a/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 104
    sget v3, Lcom/etermax/o;->error_invalid_email:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v2

    .line 105
    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/n;->b()Lcom/etermax/gamescommon/login/ui/o;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    sget v0, Lcom/etermax/i;->email_edit_text:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/n;->showEditTextKeyboard(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 47
    sget v0, Lcom/etermax/k;->login_link_fragment:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    sget v0, Lcom/etermax/i;->header_send_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v2, Lcom/etermax/gamescommon/login/ui/n$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/login/ui/n$1;-><init>(Lcom/etermax/gamescommon/login/ui/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/etermax/i;->enter_original_text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->enter_original:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/etermax/o;->app_name:I

    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/login/ui/n;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object v1
.end method
