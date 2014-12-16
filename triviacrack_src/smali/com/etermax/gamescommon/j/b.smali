.class public Lcom/etermax/gamescommon/j/b;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# static fields
.field private static a:Lcom/etermax/gamescommon/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/j/a",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/j/b;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/j/a;)Lcom/etermax/gamescommon/j/b;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/etermax/gamescommon/j/a",
            "<**>;)",
            "Lcom/etermax/gamescommon/j/b;"
        }
    .end annotation

    .prologue
    .line 75
    sput-object p1, Lcom/etermax/gamescommon/j/b;->a:Lcom/etermax/gamescommon/j/a;

    .line 77
    new-instance v0, Lcom/etermax/gamescommon/j/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/j/b;-><init>()V

    .line 78
    sget v1, Lcom/etermax/o;->facebook_session_expired:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/etermax/gamescommon/j/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/j/b;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public onAccept(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/etermax/gamescommon/j/b;->a:Lcom/etermax/gamescommon/j/a;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/etermax/gamescommon/j/b;->a:Lcom/etermax/gamescommon/j/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/j/a;->a(Lcom/etermax/gamescommon/j/a;)Z

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/b;->dismiss()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/a;->onDismiss(Landroid/content/DialogInterface;)V

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/j/b;->a:Lcom/etermax/gamescommon/j/a;

    .line 95
    return-void
.end method
