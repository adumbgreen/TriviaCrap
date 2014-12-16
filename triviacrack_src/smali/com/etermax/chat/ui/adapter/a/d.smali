.class public Lcom/etermax/chat/ui/adapter/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/adapter/a/b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/chat/ui/adapter/a/d;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Lcom/etermax/chat/ui/f;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    if-nez p2, :cond_1

    .line 26
    new-instance p2, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;

    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/a/d;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;-><init>(Landroid/content/Context;)V

    .line 33
    :goto_0
    instance-of v0, p5, Lcom/etermax/chat/a/f;

    if-eqz v0, :cond_0

    .line 34
    check-cast p5, Lcom/etermax/chat/a/f;

    .line 39
    invoke-virtual {p2, p5}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->a(Lcom/etermax/chat/a/f;)V

    .line 40
    sget-object v0, Lcom/etermax/chat/ui/adapter/item/a;->b:Lcom/etermax/chat/ui/adapter/item/a;

    invoke-virtual {p2, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->setDownloadState(Lcom/etermax/chat/ui/adapter/item/a;)V

    .line 42
    :cond_0
    return-object p2

    .line 28
    :cond_1
    check-cast p2, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;

    goto :goto_0
.end method
