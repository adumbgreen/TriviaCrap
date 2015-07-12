.class Lcom/mdotm/android/view/MdotMActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity$4;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMActivity$4;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity$4;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$4$1;->a:Lcom/mdotm/android/view/MdotMActivity$4;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMActivity$4$1;->b:Ljava/lang/String;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4$1;->a:Lcom/mdotm/android/view/MdotMActivity$4;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity$4;->a(Lcom/mdotm/android/view/MdotMActivity$4;)Lcom/mdotm/android/view/MdotMActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->a(Lcom/mdotm/android/view/MdotMActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$4$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 606
    return-void
.end method
