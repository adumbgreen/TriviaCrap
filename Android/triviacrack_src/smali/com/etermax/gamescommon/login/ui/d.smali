.class public Lcom/etermax/gamescommon/login/ui/d;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/login/ui/e;",
        ">;"
    }
.end annotation


# static fields
.field private static g:Z


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/c;

.field b:Lcom/etermax/gamescommon/login/datasource/a;

.field c:Lcom/etermax/tools/a/a/j;

.field d:Lcom/etermax/gamescommon/datasource/e;

.field e:Lcom/etermax/gamescommon/datasource/j;

.field protected f:Landroid/widget/ToggleButton;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/etermax/gamescommon/login/ui/d;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 51
    const-string v0, "proxy.etermax.com:9000/api/test"

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/d;->h:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/etermax/gamescommon/login/ui/d$4;

    sget v1, Lcom/etermax/o;->connecting:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/etermax/gamescommon/login/ui/d$4;-><init>(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/d$4;->a(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/login/ui/d;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/etermax/gamescommon/login/ui/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/f;-><init>()V

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/login/ui/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private k()Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->api_url_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method private l()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "god_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1}, Lcom/etermax/tools/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->logout_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "god_mode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d;->f:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/etermax/gamescommon/login/ui/d;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 67
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const-string v1, "Renewing..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d;->d:Lcom/etermax/gamescommon/datasource/e;

    const/4 v1, 0x1

    new-instance v2, Lcom/etermax/gamescommon/login/ui/d$1;

    invoke-direct {v2, p0, p1}, Lcom/etermax/gamescommon/login/ui/d$1;-><init>(Lcom/etermax/gamescommon/login/ui/d;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->a(ZLcom/etermax/gamescommon/datasource/g;)V

    .line 83
    return-void
.end method

.method a(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    sput-boolean p2, Lcom/etermax/gamescommon/login/ui/d;->g:Z

    .line 196
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b/a/aa;->a(Z)V

    .line 197
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    new-instance v0, Lcom/etermax/gamescommon/login/ui/d$3;

    const-string v1, "cambiando password..."

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/login/ui/d$3;-><init>(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/d$3;->a(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public c()Lcom/etermax/gamescommon/login/ui/e;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/etermax/gamescommon/login/ui/d$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/d$2;-><init>(Lcom/etermax/gamescommon/login/ui/d;)V

    return-object v0
.end method

.method c(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Not Working"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/etermax/tools/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/etermax/tools/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/etermax/tools/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/etermax/tools/a/a/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->c()Lcom/etermax/gamescommon/login/ui/e;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "proxy.etermax.com:9000/api/test"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/d;->k()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d;->c:Lcom/etermax/tools/a/a/j;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/a/a/j;->a(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 137
    return-void
.end method

.method j()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->mail_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->password_edit_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/etermax/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Invalid email or password"

    invoke-static {v0, v1}, Lcom/etermax/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/etermax/gamescommon/login/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
