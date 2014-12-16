.class public abstract Lcom/etermax/tools/navigation/b;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# static fields
.field protected static VOID_CALLBACKS:Lcom/etermax/tools/navigation/c;


# instance fields
.field protected mCallbacks:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/etermax/tools/navigation/b$1;

    invoke-direct {v0}, Lcom/etermax/tools/navigation/b$1;-><init>()V

    sput-object v0, Lcom/etermax/tools/navigation/b;->VOID_CALLBACKS:Lcom/etermax/tools/navigation/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method protected getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    :cond_0
    return-object v0
.end method

.method public abstract getDummyCallbacks()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 20
    :try_start_0
    iput-object p1, p0, Lcom/etermax/tools/navigation/b;->mCallbacks:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 29
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/b;->getDummyCallbacks()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/navigation/b;->mCallbacks:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method protected showEditTextKeyboard(I)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/etermax/tools/navigation/b;->getView()Landroid/view/View;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->a(Landroid/content/Context;)V

    .line 56
    :cond_0
    return-void
.end method
