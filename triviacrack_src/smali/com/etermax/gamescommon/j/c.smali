.class public Lcom/etermax/gamescommon/j/c;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Params:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/gamescommon/j/a",
        "<THost;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/etermax/gamescommon/login/datasource/c;

.field private b:Lcom/etermax/gamescommon/login/datasource/a;

.field private c:Lcom/etermax/tools/f/a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    .line 39
    iput-object p3, p0, Lcom/etermax/gamescommon/j/c;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 40
    iput-object p4, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    .line 31
    iput-object p3, p0, Lcom/etermax/gamescommon/j/c;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 32
    iput-object p4, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 33
    iput-object p5, p0, Lcom/etermax/gamescommon/j/c;->c:Lcom/etermax/tools/f/a;

    .line 34
    iput-object p6, p0, Lcom/etermax/gamescommon/j/c;->f:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v3

    .line 193
    invoke-static {p1}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v4

    .line 195
    new-instance v0, Lcom/etermax/gamescommon/j/c$1;

    sget v1, Lcom/etermax/o;->connecting:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/j/c$1;-><init>(Lcom/etermax/gamescommon/j/c;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/tools/social/a/b;Z)V

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/j/c$1;->a(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/j/c;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->c:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/etermax/gamescommon/b/ac;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ac;-><init>()V

    .line 243
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/b/ac;->b(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p3}, Lcom/etermax/gamescommon/b/ac;->c(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 227
    const-string v1, "fb_account_no_linked"

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "guest"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/etermax/gamescommon/j/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget v0, Lcom/etermax/o;->facebook_link_success:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    return-void

    .line 227
    :cond_0
    const-string v0, "email"

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/tools/social/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/etermax/tools/social/a/b;->d()V

    .line 223
    sget v0, Lcom/etermax/o;->facebook_link_failed:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->b()V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/j/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/j/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/j/c;->d(Ljava/lang/Object;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "ask_link_fb_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/j/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/etermax/gamescommon/j/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/j/d;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/j/c;->d(Ljava/lang/Object;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "keep_link_fb_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/j/d;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/tools/social/a/b;)V

    .line 70
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/j/c;->a(Ljava/lang/Object;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 233
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 236
    const-string v1, "fb_account_already_linked"

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "guest"

    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/etermax/gamescommon/j/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 236
    :cond_0
    const-string v0, "email"

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/etermax/gamescommon/j/a;->c()V

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->d()V

    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->e()V

    .line 77
    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c;->g()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method protected final g()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v1, "Facebook"

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v2}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v3}, Lcom/etermax/tools/social/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/login/datasource/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :cond_0
    return-object v0
.end method
