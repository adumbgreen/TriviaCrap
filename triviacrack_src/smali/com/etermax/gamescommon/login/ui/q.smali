.class public Lcom/etermax/gamescommon/login/ui/q;
.super Lcom/etermax/gamescommon/login/ui/j;
.source "SourceFile"


# instance fields
.field f:Lcom/etermax/gamescommon/login/datasource/c;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/j;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/etermax/gamescommon/login/ui/r;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/r;-><init>()V

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v2, "mEmail"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/q;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/etermax/gamescommon/login/ui/q$5;

    sget v1, Lcom/etermax/o;->authenticating:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/gamescommon/login/ui/q$5;-><init>(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/q$5;->a(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/login/ui/q;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    new-instance v0, Lcom/etermax/gamescommon/login/ui/q$6;

    sget v1, Lcom/etermax/o;->connecting:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/gamescommon/login/ui/q$6;-><init>(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/q$6;->a(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    const-string v1, "login_facebook_click"

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 88
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->j()V

    .line 90
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 124
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 127
    sget v1, Lcom/etermax/o;->error_password_required:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-static {v0, v1, v2}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/etermax/gamescommon/login/ui/q;->h:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/gamescommon/login/ui/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/ui/q;->b(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected h()Lcom/etermax/gamescommon/b/l;
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/etermax/gamescommon/login/ui/q$7;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/q$7;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    return-object v0
.end method

.method protected i()Lcom/etermax/gamescommon/b/l;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/etermax/gamescommon/login/ui/q$8;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/q$8;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/j;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    sget v0, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/q;->showEditTextKeyboard(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/j;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mEmail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/q;->g:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "newPassword"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/login/ui/q;->h:Z

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 38
    sget v0, Lcom/etermax/k;->login_password_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    sget v0, Lcom/etermax/i;->header_send_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    new-instance v1, Lcom/etermax/gamescommon/login/ui/q$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/q$1;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/etermax/i;->password_forgot_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 51
    new-instance v1, Lcom/etermax/gamescommon/login/ui/q$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/q$2;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v1, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lcom/etermax/gamescommon/login/ui/q$3;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/login/ui/q$3;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 70
    sget v1, Lcom/etermax/i;->fb_login_button:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v3, Lcom/etermax/gamescommon/login/ui/q$4;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/login/ui/q$4;-><init>(Lcom/etermax/gamescommon/login/ui/q;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-boolean v1, p0, Lcom/etermax/gamescommon/login/ui/q;->h:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    sget v0, Lcom/etermax/i;->fb_login_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    sget v0, Lcom/etermax/i;->password_offer_facebook:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    return-object v2
.end method
