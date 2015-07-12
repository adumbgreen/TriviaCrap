.class public Lcom/etermax/gamescommon/login/datasource/b/b;
.super Lcom/etermax/tools/a/c/b;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    .line 38
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xc9

    sget v2, Lcom/etermax/o;->username_already_registered:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xca

    sget v2, Lcom/etermax/o;->email_typo_desc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xd3

    sget v2, Lcom/etermax/o;->error_invalid_email:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xd4

    sget v2, Lcom/etermax/o;->error_invalid_user_message:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xd5

    sget v2, Lcom/etermax/o;->error_invalid_password:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x12d

    sget v2, Lcom/etermax/o;->username_available:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x12f

    sget v2, Lcom/etermax/o;->email_not_registered:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25c

    sget v2, Lcom/etermax/o;->password_incorrect:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25f

    sget v2, Lcom/etermax/o;->facebook_credentials_invalid:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x262

    sget v2, Lcom/etermax/o;->password_reseted_recently:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x263

    sget v2, Lcom/etermax/o;->password_reset_week_limit:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lcom/etermax/tools/a/c/b;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/b/e/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/c/b;-><init>(Lorg/b/e/a/b;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/etermax/o;->unknown_error:I

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/b/b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method
