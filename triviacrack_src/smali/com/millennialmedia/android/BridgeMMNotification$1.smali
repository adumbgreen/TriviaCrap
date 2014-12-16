.class Lcom/millennialmedia/android/BridgeMMNotification$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMNotification;->alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/millennialmedia/android/BridgeMMNotification;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 75
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMNotification;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 76
    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->i()Landroid/app/Activity;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->a:Ljava/util/Map;

    .line 80
    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 82
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 84
    const-string v0, "title"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    const-string v0, "message"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "message"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    const-string v0, "cancelButton"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const/4 v3, -0x2

    const-string v0, "cancelButton"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    :cond_2
    const-string v0, "buttons"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const-string v0, "buttons"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    array-length v1, v0

    if-lez v1, :cond_3

    .line 99
    const/4 v1, -0x3

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    :cond_3
    array-length v1, v0

    if-le v1, v5, :cond_4

    .line 103
    const/4 v1, -0x1

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    :cond_4
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 110
    :cond_5
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 111
    iput v5, v0, Lcom/millennialmedia/android/MMJSResponse;->c:I

    .line 112
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->b:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMNotification;->a(Lcom/millennialmedia/android/BridgeMMNotification;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    .line 116
    :goto_0
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMNotification$1;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
