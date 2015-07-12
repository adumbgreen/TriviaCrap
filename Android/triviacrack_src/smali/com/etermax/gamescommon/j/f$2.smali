.class Lcom/etermax/gamescommon/j/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/j/f;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/j/f;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/j/f;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/etermax/gamescommon/j/f$2;->c:Lcom/etermax/gamescommon/j/f;

    iput-object p2, p0, Lcom/etermax/gamescommon/j/f$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/etermax/gamescommon/j/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$2;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->error_tw_authentication_failed:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$2;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/etermax/gamescommon/j/f$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    return-void
.end method
