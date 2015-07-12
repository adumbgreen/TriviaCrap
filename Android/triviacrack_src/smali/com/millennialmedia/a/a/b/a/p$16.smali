.class final Lcom/millennialmedia/a/a/b/a/p$16;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Calendar;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 665
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 666
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 667
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    .line 669
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 676
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v7, Lcom/millennialmedia/a/a/d/b;->d:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v7, :cond_7

    .line 677
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v7

    .line 678
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->m()I

    move-result v0

    .line 679
    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 680
    goto :goto_1

    .line 681
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 682
    goto :goto_1

    .line 683
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 684
    goto :goto_1

    .line 685
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 686
    goto :goto_1

    .line 687
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 688
    goto :goto_1

    .line 689
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 690
    goto :goto_1

    .line 693
    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    .line 694
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$16;->a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Calendar;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 701
    if-nez p2, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 719
    :goto_0
    return-void

    .line 705
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 706
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 707
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 708
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 709
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 710
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 711
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 712
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 713
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 714
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 715
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 716
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    .line 717
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/a/a/d/c;->a(J)Lcom/millennialmedia/a/a/d/c;

    .line 718
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$16;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
