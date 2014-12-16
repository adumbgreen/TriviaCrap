.class Lcom/etermax/preguntados/ui/chat/a$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/chat/a;->d_()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/chat/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/chat/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/a$3;->a:Lcom/etermax/preguntados/ui/chat/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a$3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 177
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Void;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    invoke-static {v3}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b(Z)V

    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$3;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->k:Lcom/etermax/gamescommon/datasource/a;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/etermax/gamescommon/datasource/a;->b(ZLjava/lang/Long;)V

    .line 195
    return-void
.end method

.method protected a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a$3;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/a$3;->a:Lcom/etermax/preguntados/ui/chat/a;

    sget v2, Lcom/etermax/o;->error_chat_message:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    check-cast p1, Lcom/etermax/preguntados/ui/chat/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/a$3;->a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    check-cast p1, Lcom/etermax/preguntados/ui/chat/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/a$3;->a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$3;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->m:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->d(J)Ljava/lang/Void;

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method
