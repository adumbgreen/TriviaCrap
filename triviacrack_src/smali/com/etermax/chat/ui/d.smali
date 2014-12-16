.class public Lcom/etermax/chat/ui/d;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/chat/ui/e;

.field private b:Lcom/etermax/chat/a/f;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/a/f;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/chat/ui/d;->b:Lcom/etermax/chat/a/f;

    return-object v0
.end method

.method public static a()Lcom/etermax/chat/ui/d;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/etermax/chat/ui/d;

    invoke-direct {v0}, Lcom/etermax/chat/ui/d;-><init>()V

    .line 39
    return-object v0
.end method

.method static synthetic b(Lcom/etermax/chat/ui/d;)Lcom/etermax/chat/ui/e;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/etermax/chat/ui/d;->a:Lcom/etermax/chat/ui/e;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/chat/ui/d;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/etermax/chat/ui/d;->c:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/etermax/chat/ui/d;->c:I

    .line 35
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/etermax/chat/ui/d;->b:Lcom/etermax/chat/a/f;

    .line 54
    return-void
.end method

.method public a(Lcom/etermax/chat/ui/e;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/etermax/chat/ui/d;->a:Lcom/etermax/chat/ui/e;

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/e;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/d;->setRetainInstance(Z)V

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/etermax/chat/ui/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/etermax/chat/ui/d;->b:Lcom/etermax/chat/a/f;

    invoke-virtual {v1}, Lcom/etermax/chat/a/f;->d()Lcom/etermax/chat/a/h;

    move-result-object v1

    sget-object v2, Lcom/etermax/chat/a/h;->b:Lcom/etermax/chat/a/h;

    if-ne v1, v2, :cond_0

    .line 63
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lcom/etermax/o;->copy:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/etermax/o;->retry:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/etermax/o;->delete_:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 64
    new-instance v2, Lcom/etermax/chat/ui/d$1;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/d$1;-><init>(Lcom/etermax/chat/ui/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    sget v2, Lcom/etermax/o;->copy:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/etermax/o;->forward:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 88
    new-instance v2, Lcom/etermax/chat/ui/d$2;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/d$2;-><init>(Lcom/etermax/chat/ui/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
