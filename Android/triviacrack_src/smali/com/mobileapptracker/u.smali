.class final Lcom/mobileapptracker/u;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/u;->a:Lcom/mobileapptracker/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/mobileapptracker/u;->a:Lcom/mobileapptracker/h;

    iget-boolean v0, v0, Lcom/mobileapptracker/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobileapptracker/u;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v0}, Lcom/mobileapptracker/h;->b()V

    :cond_0
    return-void
.end method
