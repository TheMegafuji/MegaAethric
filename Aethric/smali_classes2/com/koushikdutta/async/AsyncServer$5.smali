.class final Lcom/koushikdutta/async/AsyncServer$5;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 465
    check-cast p1, Ljava/net/InetAddress;

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/AsyncServer$5;->compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 3

    .line 468
    instance-of v0, p1, Ljava/net/Inet4Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, p2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    return v1

    .line 470
    :cond_0
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    instance-of p1, p2, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 472
    instance-of p1, p2, Ljava/net/Inet6Address;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
