.class public Lcom/etermax/chat/ui/adapter/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    .line 17
    if-nez p2, :cond_0

    .line 18
    sget v0, Lcom/etermax/k;->list_item_null_type:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    :goto_0
    return-object v0

    .line 20
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    move-object v0, p2

    goto :goto_0
.end method
