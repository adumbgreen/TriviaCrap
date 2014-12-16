.class Lcom/etermax/chat/ui/BaseChatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/BaseChatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/ui/BaseChatActivity;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/BaseChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etermax/chat/ui/BaseChatActivity$1;->a:Lcom/etermax/chat/ui/BaseChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseChatActivity$1;->a:Lcom/etermax/chat/ui/BaseChatActivity;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/BaseChatActivity;->a()V

    .line 63
    return-void
.end method
