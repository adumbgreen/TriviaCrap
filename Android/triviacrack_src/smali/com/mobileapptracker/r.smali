.class final Lcom/mobileapptracker/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/r;->b:Lcom/mobileapptracker/h;

    iput-object p2, p0, Lcom/mobileapptracker/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/r;->b:Lcom/mobileapptracker/h;

    iget-object v0, v0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    iget-object v1, p0, Lcom/mobileapptracker/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->Z(Ljava/lang/String;)V

    return-void
.end method
