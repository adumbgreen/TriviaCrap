.class Lcom/flurry/sdk/dw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dw;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Landroid/location/Location;)Landroid/location/Location;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 251
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/dw;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)V

    .line 254
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    return-void
.end method
