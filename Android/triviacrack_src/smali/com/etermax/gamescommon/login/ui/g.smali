.class public Lcom/etermax/gamescommon/login/ui/g;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/login/ui/h;",
        ">;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/c;

.field b:Lcom/etermax/tools/f/a;

.field c:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "email_key"

    sput-object v0, Lcom/etermax/gamescommon/login/ui/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 86
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/etermax/gamescommon/login/ui/i;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/i;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->b:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 264
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/b/l;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/etermax/gamescommon/login/ui/g$4;

    sget v1, Lcom/etermax/o;->authenticating:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/gamescommon/login/ui/g$4;-><init>(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/g$4;->a(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/etermax/gamescommon/login/ui/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    return-void
.end method

.method public b()Lcom/etermax/gamescommon/login/ui/h;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/etermax/gamescommon/login/ui/g$3;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/login/ui/g$3;-><init>(Lcom/etermax/gamescommon/login/ui/g;)V

    return-object v0
.end method

.method c()V
    .locals 5

    .prologue
    const/high16 v4, -0x100

    .line 122
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->email_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 123
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 125
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 130
    sget v1, Lcom/etermax/o;->error_email_required:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {v1}, Lcom/etermax/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    sget v1, Lcom/etermax/o;->error_invalid_email:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 135
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/login/ui/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g;->b()Lcom/etermax/gamescommon/login/ui/h;

    move-result-object v0

    return-object v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 212
    sget-object v0, Lcom/etermax/gamescommon/login/ui/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/etermax/gamescommon/login/ui/g$5;

    sget v2, Lcom/etermax/o;->authenticating:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/login/ui/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/etermax/gamescommon/login/ui/g$5;-><init>(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/login/ui/g$5;->a(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    if-nez p1, :cond_0

    .line 77
    sget v0, Lcom/etermax/i;->email_edit_text:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/g;->showEditTextKeyboard(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    sget v0, Lcom/etermax/k;->login_email_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    sget v0, Lcom/etermax/i;->header_send_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v2, Lcom/etermax/gamescommon/login/ui/g$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/login/ui/g$1;-><init>(Lcom/etermax/gamescommon/login/ui/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/etermax/i;->email_edit_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lcom/etermax/gamescommon/login/ui/g$2;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/login/ui/g$2;-><init>(Lcom/etermax/gamescommon/login/ui/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    return-object v1
.end method
