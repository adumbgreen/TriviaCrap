.class public Lcom/etermax/gamescommon/login/ui/s;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/c;

.field b:Lcom/etermax/tools/f/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/etermax/gamescommon/login/ui/t;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/ui/t;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "mEmail"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/s;->b:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/s;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/s;Lcom/etermax/gamescommon/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/s;->a(Lcom/etermax/gamescommon/b/l;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/etermax/gamescommon/login/ui/s$2;

    sget v1, Lcom/etermax/o;->connecting:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/login/ui/s;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/gamescommon/login/ui/s$2;-><init>(Lcom/etermax/gamescommon/login/ui/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/login/ui/s$2;->a(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/s;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/ui/s;->b(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mEmail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/s;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/etermax/k;->login_reset_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    sget v0, Lcom/etermax/i;->reset_password_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 39
    new-instance v2, Lcom/etermax/gamescommon/login/ui/s$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/login/ui/s$1;-><init>(Lcom/etermax/gamescommon/login/ui/s;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v1
.end method
