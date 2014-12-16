.class public Lcom/etermax/gamescommon/coupon/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/coupon/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/EditText;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 26
    const/4 v0, 0x6

    iput v0, p0, Lcom/etermax/gamescommon/coupon/a;->b:I

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/coupon/a;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/gamescommon/coupon/a;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/a;->a(Landroid/os/IBinder;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/etermax/gamescommon/coupon/a;->b:I

    if-ge v0, v1, :cond_1

    .line 69
    :cond_0
    sget v0, Lcom/etermax/o;->invalid_coupon:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->enter_coupon_again:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/coupon/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/coupon/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/coupon/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/coupon/a;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/coupon/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/gamescommon/coupon/a$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/coupon/a$1;-><init>(Lcom/etermax/gamescommon/coupon/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 51
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/etermax/gamescommon/coupon/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/etermax/gamescommon/coupon/a;->e()V

    .line 63
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/coupon/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/coupon/b;->b()V

    .line 79
    return-void
.end method

.method public d()Lcom/etermax/gamescommon/coupon/b;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/etermax/gamescommon/coupon/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/coupon/a$2;-><init>(Lcom/etermax/gamescommon/coupon/a;)V

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/etermax/gamescommon/coupon/a;->d()Lcom/etermax/gamescommon/coupon/b;

    move-result-object v0

    return-object v0
.end method
