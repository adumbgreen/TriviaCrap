.class Lcom/etermax/preguntados/ui/chat/a$6;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/chat/a;->o()V
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
.method constructor <init>(Lcom/etermax/preguntados/ui/chat/a;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a$6;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 301
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->j:Lcom/etermax/chat/a/a;

    invoke-virtual {v0}, Lcom/etermax/chat/a/a;->d()V

    .line 311
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/chat/a;->a(Lcom/etermax/preguntados/ui/chat/a;)V

    .line 313
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->k:Lcom/etermax/gamescommon/datasource/a;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/a;->a(Ljava/lang/Long;)Z

    .line 320
    return-void
.end method

.method protected a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a$6;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    sget v2, Lcom/etermax/o;->error_chat_message:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/etermax/preguntados/ui/chat/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/a$6;->a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/etermax/preguntados/ui/chat/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/a$6;->a(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->k:Lcom/etermax/gamescommon/datasource/a;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/a;->a(J)V

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$6;->a:Lcom/etermax/preguntados/ui/chat/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/chat/a;->j:Lcom/etermax/chat/a/a;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/chat/a/a;->a(J)V

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method
