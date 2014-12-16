.class public Lcom/etermax/preguntados/ui/profile/a;
.super Lcom/etermax/gamescommon/profile/ui/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/user/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/profile/ui/c",
        "<",
        "Lcom/etermax/preguntados/ui/profile/ProfileBlockedUsersFragment$ListableBlockedUser;",
        ">;",
        "Lcom/etermax/gamescommon/user/a;"
    }
.end annotation


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field protected f:Lcom/etermax/gamescommon/datasource/e;

.field protected g:Lcom/etermax/gamescommon/login/datasource/a;

.field protected h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "user_id_profile"

    sput-object v0, Lcom/etermax/preguntados/ui/profile/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/c;-><init>()V

    .line 41
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/etermax/preguntados/ui/profile/a;->i:I

    .line 272
    return-void
.end method

.method public static a(J)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/etermax/preguntados/ui/profile/b;->f()Lcom/etermax/preguntados/ui/profile/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/etermax/preguntados/ui/profile/c;->a(J)Lcom/etermax/preguntados/ui/profile/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/profile/c;->a()Lcom/etermax/preguntados/ui/profile/a;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/profile/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/profile/a;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Z)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    sget v0, Lcom/etermax/o;->error_find_users:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/etermax/o;->empty_user_blacklist:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4
    .parameter

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/etermax/gamescommon/b/an;->f:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/a;->startActivity(Landroid/content/Intent;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/etermax/preguntados/ui/profile/a$1;

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/profile/a$1;-><init>(Lcom/etermax/preguntados/ui/profile/a;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/preguntados/ui/profile/a$1;->a(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/a;->c:Lcom/etermax/gamescommon/user/a/b;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/a;->c:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 177
    sget v0, Lcom/etermax/o;->blocked_plural:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/a;->a(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/a;->b:Lcom/etermax/gamescommon/user/UserGridView;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/user/UserGridView;->setListener(Lcom/etermax/gamescommon/user/a;)V

    .line 179
    return-void
.end method
