.class Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/BaseLegacyChatActivity;->b(Lcom/etermax/chat/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/chat/ui/BaseLegacyChatActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/f;

.field final synthetic b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iput-object p2, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a:Lcom/etermax/chat/a/f;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/lang/Void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a:Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/h;->c:Lcom/etermax/chat/a/h;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    .line 273
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->n:Lcom/etermax/gamescommon/menu/a/d;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    iget-object v3, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a:Lcom/etermax/chat/a/f;

    invoke-virtual {v3}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/menu/a/d;->a(JLjava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->c()V

    .line 275
    return-void
.end method

.method protected a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a:Lcom/etermax/chat/a/f;

    sget-object v1, Lcom/etermax/chat/a/h;->b:Lcom/etermax/chat/a/h;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/f;->a(Lcom/etermax/chat/a/h;)V

    .line 280
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->h:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->c()V

    .line 281
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    sget v2, Lcom/etermax/o;->error_chat_message:I

    invoke-virtual {v1, v2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 282
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    check-cast p1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a(Lcom/etermax/chat/ui/BaseLegacyChatActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->b:Lcom/etermax/chat/ui/BaseLegacyChatActivity;

    iget-object v0, v0, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->i:Lcom/etermax/gamescommon/datasource/a;

    sget-wide v1, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->p:J

    iget-object v3, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity$2;->a:Lcom/etermax/chat/a/f;

    invoke-virtual {v3}, Lcom/etermax/chat/a/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/a;->a(JLjava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method
