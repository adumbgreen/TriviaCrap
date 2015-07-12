.class public Lcom/etermax/gamescommon/social/b;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# static fields
.field protected static a:Lcom/etermax/gamescommon/social/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/social/b;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 74
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/gamescommon/social/a;)Lcom/etermax/gamescommon/social/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    sput-object p3, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    .line 66
    new-instance v0, Lcom/etermax/gamescommon/social/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/social/b;-><init>()V

    .line 67
    invoke-static {p0, p1, p2}, Lcom/etermax/gamescommon/social/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/b;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->c()V

    .line 86
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    .line 88
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/social/a;->a(Lcom/etermax/gamescommon/social/a;)V

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    .line 79
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/etermax/gamescommon/social/a;->d()Lcom/etermax/gamescommon/social/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/c;->c()V

    .line 95
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/social/a;->c()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/social/b;->a:Lcom/etermax/gamescommon/social/a;

    .line 97
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/a;->onCancel(Landroid/content/DialogInterface;)V

    .line 98
    return-void
.end method
