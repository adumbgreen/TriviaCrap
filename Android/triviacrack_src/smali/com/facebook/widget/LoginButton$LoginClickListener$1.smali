.class Lcom/facebook/widget/LoginButton$LoginClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton$LoginClickListener;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/LoginButton$LoginClickListener;

.field final synthetic val$openSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener$1;->this$1:Lcom/facebook/widget/LoginButton$LoginClickListener;

    iput-object p2, p0, Lcom/facebook/widget/LoginButton$LoginClickListener$1;->val$openSession:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginClickListener$1;->val$openSession:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 674
    return-void
.end method
