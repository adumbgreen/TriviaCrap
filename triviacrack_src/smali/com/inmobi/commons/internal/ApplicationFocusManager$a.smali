.class Lcom/inmobi/commons/internal/ApplicationFocusManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 161
    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    .line 164
    iget-boolean v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
